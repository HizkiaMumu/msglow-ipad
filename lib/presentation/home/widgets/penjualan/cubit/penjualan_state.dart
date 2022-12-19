part of 'penjualan_cubit.dart';

enum OrderState { initial, loading, finish }

enum FunctionState { save, print }

@freezed
class PenjualanState with _$PenjualanState {
  const PenjualanState._();

  const factory PenjualanState({
    required List<OrderProduct> orderItems,
    required List<Product> products,
    @Default(OrderState.initial) OrderState orderState,
    @Default(0) int subTotal,
    @Default(0) int discount,
    @Default(0) int total,
    @Default(false) bool isPrinted,
    @Default(PaymentMethod()) PaymentMethod paymentMethod,
    @Default(ResultState.initial()) ResultState<SubmitOrderResponse> submitOrderResult,
    @Default(ResultState.initial()) ResultState<ProductList> fetchProductsResult,
    @Default(ResultState.initial()) ResultState<List<BankAccount>> fetchBankAccountsResult,
    @Default(ResultState.initial()) ResultState<Customer> fetchCustomersResult,
    CustomerElement? selectedCustomer,
    List<CustomerElement>? searchedCustomers,
    @Default(0) int suggestedCashAmountOptionOne,
    @Default(0) int suggestedCashAmountOptionTwo,
    @Default(ResultState.initial()) ResultState<dynamic> validateOrderResult,
    @Default(FunctionState.save) FunctionState onDoingFunction,
  }) = _PenjualanState;

  factory PenjualanState.initial() => PenjualanState(
        orderItems: List.empty(growable: true),
        products: List.empty(growable: true),
      );

  String productName(OrderProduct item) {
    if (item.isPreOrder == true) {
      return "(Pre-Order)${item.product.name ?? '-'}";
    } else {
      return item.product.name ?? '-';
    }
  }

  PrintData toPrintData({required DateTime orderDate, User? cashierData}) => PrintData(
        customer: selectedCustomer,
        orderData: orderItems
            .map((e) => PrintOrderData(
                  quantity: e.quantity,
                  costPerItem: e.product.getStandardPriceInInt(),
                  total: e.product.getStandardPriceInInt() * e.quantity,
                  name: productName(e),
                  note: e.isCustomProduct ? e.product.description : e.note,
                  isPreOrder: e.isPreOrder,
                ))
            .toList(),
        orderPackages: [],
        orderCustom: [],
        subtotal: subTotal,
        discount: discount,
        total: total,
        paymentMethod: paymentMethod.selectedPaymentMethod(),
        cashAmount: paymentMethod.cashAmountInt,
        orderDate: orderDate,
        isPrinted: false,
        cashierData: cashierData,
      );
}
