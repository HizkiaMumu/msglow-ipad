import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/libraries/thermal_printer_manager.dart';
import '../../../../../core/unions/failure.dart';
import '../../../../../core/unions/result_state.dart';
import '../../../../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../../../../../data/remote/response/penjualan/submit_order_response.dart';
import '../../../../../domain/entities/login/user.dart';
import '../../../../../domain/entities/penjualan/customer/customer.dart';
import '../../../../../domain/entities/penjualan/customer/customer_element.dart';
import '../../../../../domain/entities/penjualan/order_product.dart';
import '../../../../../domain/entities/penjualan/payment_method.dart';
import '../../../../../domain/entities/penjualan/product.dart';
import '../../../../../domain/entities/penjualan/product_list.dart';
import '../../../../../domain/entities/penjualan/product_price.dart';
import '../../../../../domain/entities/penjualan/transfer_bank_item_data.dart';
import '../../../../../domain/entities/print/print_data.dart';
import '../../../../../domain/entities/print/print_order_data.dart';
import '../../../../../domain/usecases/fetch_bank_account_list_usecase.dart';
import '../../../../../domain/usecases/fetch_customers_usecase.dart';
import '../../../../../domain/usecases/fetch_product_list_usecase.dart';
import '../../../../../domain/usecases/submit_order_usecase.dart';
import '../../../../../domain/usecases/update_order_print_status_usecase.dart';
import '../detail/payment_method/input_pembayaran_form.dart';

part 'penjualan_cubit.freezed.dart';
part 'penjualan_state.dart';

@injectable
class PenjualanCubit extends Cubit<PenjualanState> {
  final FetchProductListUseCase _fetchProductListUseCase;
  final SubmitOrderUseCase _submitOrderUseCase;
  final FetchCustomersUseCase _fetchCustomersUseCase;
  final ThermalPrinterManager _thermalPrinterManager;
  final FetchBankAccountListUse _fetchBankAccountListUse;
  final UpdateOrderPrintStatusUsecase _updateOrderPrintStatusUsecase;

  PenjualanCubit(
    this._fetchProductListUseCase,
    this._submitOrderUseCase,
    this._fetchCustomersUseCase,
    this._thermalPrinterManager,
    this._fetchBankAccountListUse,
    this._updateOrderPrintStatusUsecase,
  ) : super(PenjualanState.initial());

  addOrderItem(Product product) {
    if (state.orderItems.firstWhereOrNull((element) => element.product == product) != null) return;

    emit(state.copyWith(orderState: OrderState.loading));

    emit(state.copyWith(
      orderItems: state.orderItems
        ..add(
          OrderProduct(product: product, isProductPakage: product.isProductPackage),
        ),
      orderState: OrderState.finish,
    ));

    _calculateProductPrice();
  }

  updateOrderNote(OrderProduct orderProduct, String note) {
    emit(state.copyWith(orderState: OrderState.loading));

    final _index = state.orderItems.indexWhere((element) => element == orderProduct);
    if (_index == -1) {
      emit(state.copyWith(orderState: OrderState.finish));
      return; // Break the method when order item not exist
    }

    emit(
      state.copyWith(
        orderItems: state.orderItems..[_index] = orderProduct.copyWith(note: note),
        orderState: OrderState.finish,
      ),
    );
  }

  addOrderQuantity(
    OrderProduct orderProduct, {
    int? newQuantity,
  }) {
    emit(state.copyWith(orderState: OrderState.loading));

    final _index = state.orderItems.indexWhere((element) => element == orderProduct);
    if (_index == -1) return; // Break the method when order item not exist
    emit(
      state.copyWith(
        orderItems: state.orderItems
          ..[_index] = orderProduct.copyWith(quantity: newQuantity ?? orderProduct.quantity + 1),
        orderState: OrderState.finish,
      ),
    );

    _calculateProductPrice();
  }

  reduceOrderQuantity(OrderProduct orderProduct) {
    emit(state.copyWith(orderState: OrderState.loading));

    final _index = state.orderItems.indexWhere((element) => element == orderProduct);
    if (_index == -1) return; // Break the method when order item not exist

    // Remove from list when quantity equal to 1
    if (orderProduct.quantity == 1) {
      emit(
        state.copyWith(
          orderItems: state.orderItems..removeAt(_index),
          orderState: OrderState.finish,
        ),
      );
    } else {
      // Remove 1 quantity
      emit(
        state.copyWith(
          orderItems: state.orderItems..[_index] = orderProduct.copyWith(quantity: orderProduct.quantity - 1),
          orderState: OrderState.finish,
        ),
      );
    }

    _calculateProductPrice();
  }

  updatePreOrder(OrderProduct orderProduct, bool preOrder) {
    emit(state.copyWith(orderState: OrderState.loading));

    final _index = state.orderItems.indexWhere((element) => element == orderProduct);
    if (_index == -1) {
      emit(state.copyWith(orderState: OrderState.finish));
      return; // Break the method when order item not exist
    }

    emit(
      state.copyWith(
        orderItems: state.orderItems..[_index] = orderProduct.copyWith(isPreOrder: preOrder),
        orderState: OrderState.finish,
      ),
    );
  }

  removeOrderItem(OrderProduct orderProduct) {
    emit(state.copyWith(orderState: OrderState.loading));

    emit(
      state.copyWith(
        orderItems: state.orderItems..remove(orderProduct),
        orderState: OrderState.finish,
      ),
    );

    _calculateProductPrice();
  }

  // Sum prices from order items
  _calculateProductPrice() {
    int _subtotal = 0;
    int _discount = 0;
    int _total = 0;

    for (OrderProduct orderItem in state.orderItems) {
      _subtotal += orderItem.getSubtotalPerProduct;
      _total += orderItem.getTotalPerProduct(state.selectedCustomer);
    }

    _discount = _subtotal - _total;

    // Ignore subtotal and discount calculation when total greater than subtotal
    if (_total > _subtotal) {
      _discount = 0;
      _subtotal = _total;
    }

    emit(state.copyWith(
      subTotal: _subtotal,
      discount: _discount,
      total: _total,
    ));

    _calculateCashAmountSuggestion();
  }

  changePaymentMethod(PaymentMethod paymentMethod) {
    emit(state.copyWith(paymentMethod: paymentMethod));
  }

  submitOrder({required DateTime orderDate, User? user}) async {
    emit(state.copyWith(submitOrderResult: const ResultState.loading()));

    final _result = await _submitOrderUseCase(
      SubmitOrderUseCaseParams(
          paymentMethod: state.paymentMethod,
          orderItems: state.orderItems,
          subTotal: state.subTotal,
          selectedCustomer: state.selectedCustomer,
          orderDate: orderDate,
          discount: state.discount,
          userId: user?.id ?? -1),
    );

    _result.fold(
      (l) => emit(
        state.copyWith(
          submitOrderResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) {
        TransferBankItemData.items[0].namaPengirim = "";
        TransferBankItemData.items[0].namaBank = "";
        TransferBankItemData.items[0].noRekening = "";
        TransferBankItemData.items[0].bankAccount = null;
        if (state.isPrinted) {
          updatePrintedStatus(r.orderId, r);
        } else {
          emit(
            state.copyWith(
              submitOrderResult: ResultState.success(data: r),
            ),
          );
        }

        _resetDetailState();
        // re-fetch product list data when success submit order
        fetchProductList();
      },
    );
  }

  fetchProductList() async {
    emit(state.copyWith(fetchProductsResult: const ResultState.loading()));

    final _result = await _fetchProductListUseCase(const FetchProductListUseCaseParams());

    _result.fold(
      (l) => emit(
        state.copyWith(
          fetchProductsResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          fetchProductsResult: ResultState.success(
            data: r,
          ),
          products: r.products ?? List.empty(),
        ),
      ),
    );
  }

  fetchBankAccountList() async {
    emit(state.copyWith(fetchBankAccountsResult: const ResultState.loading()));

    final _result = await _fetchBankAccountListUse(const FetchBankAccountListParams());

    _result.fold(
      (l) {
        emit(
          state.copyWith(
            fetchBankAccountsResult: ResultState.error(
              failure: l,
            ),
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            fetchBankAccountsResult: ResultState.success(
              data: r,
            ),
          ),
        );
      },
    );
  }

  startScanPrinter() {
    _thermalPrinterManager.startScanPrinter();
  }

  validateOrder({required FunctionState onDoingFunction}) {
    emit(state.copyWith(
      validateOrderResult: const ResultState.loading(),
      onDoingFunction: onDoingFunction,
    ));

    // Emit error when order items is empty
    if (state.orderItems.isEmpty) {
      emit(
        state.copyWith(
          validateOrderResult: const ResultState.error(
            failure: Failure.defaultError(Strings.msgEmptyOrderItem),
          ),
        ),
      );
      return;
    }

    // Emit error when payment method not choosen
    if (state.paymentMethod == const PaymentMethod()) {
      emit(
        state.copyWith(
          validateOrderResult: const ResultState.error(
            failure: Failure.defaultError(Strings.msgPaymentMethodNotChoosen),
          ),
        ),
      );
      return;
    }

    // Emit error when use cash payment method & amount less than total price
    if (state.paymentMethod.cashAmount != null) {
      if (!(formKeyCashAmount.currentState?.validate() ?? true)) {
        emit(
          state.copyWith(
            validateOrderResult: const ResultState.error(
              failure: Failure.defaultError(Strings.msgErrorCashAmount),
            ),
          ),
        );
        return;
      }
    }

    emit(state.copyWith(validateOrderResult: const ResultState.success(data: null)));
  }

  onDispose() {
    _thermalPrinterManager.stopScanPrinter();
  }

  fetchCustomers() async {
    emit(state.copyWith(fetchCustomersResult: const ResultState.loading()));
    _clearSearchedCustomers();

    final _result = await _fetchCustomersUseCase(const FetchCustomersUseCaseParams());

    _result.fold(
      (l) => emit(
        state.copyWith(
          fetchCustomersResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          fetchCustomersResult: ResultState.success(
            data: r,
          ),
        ),
      ),
    );
  }

  changeCustomer(CustomerElement? customer) {
    emit(state.copyWith(selectedCustomer: customer));
    _calculateProductPrice();
  }

  _resetDetailState() {
    emit(
      state.copyWith(
        orderItems: List.empty(growable: true),
        orderState: OrderState.initial,
        paymentMethod: const PaymentMethod(),
        subTotal: 0,
        discount: 0,
        total: 0,
        selectedCustomer: null,
        suggestedCashAmountOptionOne: 0,
        validateOrderResult: const ResultState.initial(),
      ),
    );
  }

  changeOrderCostCategory(int index, CostCategory costCategory) {
    emit(state.copyWith(orderState: OrderState.loading));

    final _changedOrderProcut = state.orderItems[index].copyWith(costCategory: costCategory);

    emit(
      state.copyWith(
        orderItems: state.orderItems..[index] = _changedOrderProcut,
        orderState: OrderState.finish,
      ),
    );

    _calculateProductPrice();
  }

  searchCustomers(String? value, List<CustomerElement> customers) {
    if (value == null || value.isEmpty) {
      _clearSearchedCustomers();
      return;
    }
    final _searchedCustomers =
        customers.where((element) => element.fullName!.toLowerCase().startsWith(value.toLowerCase())).toList();

    emit(state.copyWith(searchedCustomers: _searchedCustomers));
  }

  _clearSearchedCustomers() {
    emit(state.copyWith(searchedCustomers: null));
  }

  _calculateCashAmountSuggestion() {
    final _totalInString = state.total.toString();
    final _totalLength = _totalInString.length;

    // Just return 10000 & 50000 when total length is less than 5
    if (_totalLength < 5) {
      emit(state.copyWith(suggestedCashAmountOptionOne: 10000));
      emit(state.copyWith(suggestedCashAmountOptionTwo: 50000));
      return;
    }

    final _lastFiveDigitOfTotal = int.parse(state.total.toString().substring(_totalLength - 5));

    emit(state.copyWith(
        suggestedCashAmountOptionOne: _cashAmountSuggestion(
      lastFiveDigitOfTotal: _lastFiveDigitOfTotal,
      roundedValue: 10000,
    )));
    emit(state.copyWith(
        suggestedCashAmountOptionTwo: _cashAmountSuggestion(
      lastFiveDigitOfTotal: _lastFiveDigitOfTotal,
      roundedValue: 50000,
    )));
  }

  _cashAmountSuggestion({
    required int lastFiveDigitOfTotal,
    required int roundedValue,
  }) {
    if (lastFiveDigitOfTotal % roundedValue == 0) {
      return state.total;
    }

    final _roundedLastFiveDigitOfTotal = (lastFiveDigitOfTotal ~/ roundedValue + 1) * roundedValue;

    return state.total - lastFiveDigitOfTotal + _roundedLastFiveDigitOfTotal;
  }

  searchProducts(String keyword) {
    emit(state.copyWith(fetchProductsResult: const ResultState.loading()));

    final _products = state.products
        .where((element) => element.name?.toLowerCase().contains(keyword.toLowerCase()) ?? false)
        .toList();

    emit(state.copyWith(
        fetchProductsResult: ResultState.success(
            data: ProductList(
      products: _products,
      status: '',
      statusCode: '',
      message: '',
    ))));
  }

  addCustomProduct({
    required String productName,
    required String price,
    required String note,
  }) {
    final _product = Product(
        name: productName,
        description: note,
        productPriceQuantities: [
          ProductPrice(
            quantity: '1',
            price: price,
          ),
        ],
        productPriceQuantity: null,
        isProductPackage: false);
    if (state.orderItems.firstWhereOrNull((element) => element.product.name == _product.name) != null) return;

    emit(state.copyWith(orderState: OrderState.loading));

    emit(state.copyWith(
      orderItems: state.orderItems
        ..add(
          OrderProduct(product: _product, isCustomProduct: true, isProductPakage: false),
        ),
      orderState: OrderState.finish,
    ));

    _calculateProductPrice();
  }

  void setIsPrinted(bool isPrinted) {
    emit(state.copyWith(isPrinted: isPrinted));
  }

  void updatePrintedStatus(int orderId, SubmitOrderResponse orderResponse) async {
    await _updateOrderPrintStatusUsecase(UpdateOrderPrintStatusUsecaseParams(orderId: "$orderId"));
    emit(
      state.copyWith(
        submitOrderResult: ResultState.success(data: orderResponse),
      ),
    );
  }
}
