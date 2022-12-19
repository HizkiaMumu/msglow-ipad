import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../../core/base/usecase/no_param.dart';
import '../../../core/constants/constants.dart';
import '../../../core/utils/date_util.dart';
import '../../../core/utils/utils.dart';
import '../../../domain/usecases/calculate_cash_amount_suggestion_usecase.dart';
import '../../../domain/usecases/do_login_usecase.dart';
import '../../../domain/usecases/fetch_customers_usecase.dart';
import '../../../domain/usecases/fetch_income_list_usecase.dart';
import '../../../domain/usecases/fetch_list_pengeluaran_usecase.dart';
import '../../../domain/usecases/fetch_outcomes_usecase.dart';
import '../../../domain/usecases/fetch_product_list_usecase.dart';
import '../../../domain/usecases/fetch_transactions_usecase.dart';
import '../../../domain/usecases/send_closing_mail_usecase.dart';
import '../../../domain/usecases/submit_order_usecase.dart';
import '../../../domain/usecases/update_order_print_status_usecase.dart';
import '../../../domain/usecases/update_pre_order_status_usecase.dart';
import '../../../domain/usecases/update_profile_usecase.dart';
import '../request/input_pengeluaran/add_pengeluaran_baru_request.dart';
import '../request/penjualan/add_customer_request.dart';
import '../request/refund_order_request.dart';
import '../request/transaction/add_outcome_request.dart';
import '../request/transaction/closing_request.dart';
import '../request/transaction/send_closing_mail_request.dart';
import 'endpoint.dart';

@lazySingleton
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> doLogin(DoLoginUseCaseParams params) async {
    return await _dio.post(
      Endpoint.login,
      data: {
        'email': params.email,
        'password': params.password,
      },
    );
  }

  Future<Response> updateProfile(UpdateProfileUseCaseParams params) async {
    Map<String, dynamic> _dataMap = {
      'name': params.name,
      'email': params.email,
      'phone_number': params.phoneNumber,
    };

    if (params.password != Constants.placeholderPassword && params.password.isNotEmpty) {
      _dataMap['password'] = params.password;
    }

    if (params.imageFile != null) {
      _dataMap['avatar'] = MultipartFile.fromFileSync(params.imageFile!.path);
    }

    return await _dio.post(
      Endpoint.editProfile,
      data: FormData.fromMap(_dataMap),
    );
  }

  Future<Response> fetchProductList(FetchProductListUseCaseParams params) async {
    return await _dio.get(Endpoint.productList);
  }

  Future<Response> fetchCustomers(FetchCustomersUseCaseParams params) async {
    return await _dio.get(Endpoint.customers);
  }

  Future<Response> fetchTransactions(FetchTransactionsUseCaseParams params) async {
    return await _dio.get(
      Endpoint.transactions,
      queryParameters: {
        if (params.filterDate != null)
          'date': DateUtil.dateTimeToFormattedDate(
            params.filterDate,
            datePattern: 'yyyy-MM-dd',
          ),
      },
    );
  }

  Future<Response> submitOrder(SubmitOrderUseCaseParams params) async {
    final _orderProducts = params.orderItems.where((element) => !element.isCustomProduct);
    final _orderCustoms = params.orderItems.where((element) => element.isCustomProduct);

    final paymentMethod = params.paymentMethod.selectedPaymentMethod().toLowerCase();

    Map<String, dynamic> _dataMap = {
      'user_id': params.userId,
      'customer_id': params.selectedCustomer?.id,
      'payment_method': paymentMethod,
      // 'payment_mechanism': params.paymentMethod.paymentMechanism,
      'payment_mechanism': 'cash',
      "transfer_nama_pengirim": null,
      "transfer_nama_bank": null,
      "transfer_nomor_rekening": null,
      'date': DateUtil.dateTimeToFormattedDate(
        params.orderDate,
        datePattern: 'yyyy-MM-dd',
      ),
      'cash_amount': int.parse(removeIdrFormat(params.paymentMethod.cashAmount)),
      'discount': params.discount,
      'order_products': _orderProducts
          .where((element) => !element.isProductPakage)
          .map((e) => {
                'product_id': e.product.id ?? 0,
                'amount': e.quantity,
                'cost_category': e.costCategory?.code ?? '1',
                'promo_id': e.costCategory?.promoId,
                'note': e.note,
                'is_pre_order': e.isPreOrder ? 1 : 0,
              })
          .toList(),
      'order_customs': _orderCustoms
          .map((e) => {
                'product': e.product.name ?? '',
                'price': e.product.getStandardPriceInInt(),
                'description': e.product.description ?? '',
                'quantity': e.quantity,
              })
          .toList(),
      'order_packages': _orderProducts
          .where((element) => element.isProductPakage)
          .map((e) => {
                "package_id": e.product.id,
                "price": e.costCategory?.amount ?? e.product.getStandardPriceInInt(),
                "quantity": e.quantity,
                "note": e.note,
                "is_pre_order": e.isPreOrder ? 1 : 0,
              })
          .toList(),
    };

    if (paymentMethod.toLowerCase() == "transfer") {
      _dataMap['transfer_nama_pengirim'] = params.paymentMethod.selectedTransferBank?.namaPengirim;
      _dataMap['transfer_nama_bank'] = params.paymentMethod.selectedTransferBank?.namaBank;
      _dataMap['transfer_nomor_rekening'] = params.paymentMethod.selectedTransferBank?.noRekening;
      _dataMap['bank_account_id'] = params.paymentMethod.selectedTransferBank?.bankAccount?.id;
    }

    debugPrint("dataMap: ${jsonEncode(_dataMap)}");
    return await _dio.post(
      Endpoint.submitOrder,
      data: _dataMap,
    );
  }

  Future<Response> refundOrder(RefundOrderRequest request) async {
    return await _dio.post(
      Endpoint.refundOrder,
      data: request.toJson(),
    );
  }

  Future<Response> calculateCashAmountSuggestion(CalculateCashAmountSuggestionUseCaseParams params) async {
    return await _dio.get(
      Endpoint.cashAmountSuggestion,
      queryParameters: {
        'total_rupiah': params.totalPrice,
      },
    );
  }

  Future<Response> addCustomer(AddCustomerRequest request) async {
    return await _dio.post(
      Endpoint.addCustomer,
      data: request.toJson(),
    );
  }

  Future<Response> fetchStatusCustomerList(NoParam noParam) async {
    return await _dio.get(
      Endpoint.statusCustomerList,
    );
  }

  Future<Response> closing(ClosingRequest request) async {
    return await _dio.post(
      Endpoint.closingKasir,
      data: request.toJson(),
    );
  }

  Future<Response> fetchListPengeluaran(FetchListPengeluaranUseCaseParams params) async {
    return await _dio.get(
      Endpoint.listPengeluaran,
      queryParameters: {
        if (params.filterDate != null)
          'month': DateUtil.dateTimeToFormattedDate(
            params.filterDate,
            datePattern: 'yyyy-MM',
          ),
      },
    );
  }

  Future<Response> addPengeluaranBaru(AddPengeluaranBaruRequest request) async {
    return await _dio.post(
      Endpoint.addPengeluaran,
      data: request.toJson(),
    );
  }

  Future<Response> sendClosingMail(SendClosingMailRequest request, SendClosingMailUseCaseParams params) async {
    return await _dio.post(
      Endpoint.sendClosingMail,
      data: request.toJson(),
      queryParameters: {
        'date': DateUtil.dateTimeToFormattedDate(
          params.filterDate ?? DateTime.now(),
          datePattern: 'yyyy-MM-dd',
        ),
      },
    );
  }

  Future<Response> fetchOutcomes(FetchOutcomesUseCaseParams params) async {
    return await _dio.get(
      Endpoint.outcomes,
      queryParameters: {
        'date': DateUtil.dateTimeToFormattedDate(
          params.filterDate ?? DateTime.now(),
          datePattern: 'yyyy-MM-dd',
        ),
      },
    );
  }

  Future<Response> addInOutcome(AddOutcomeRequest request) async {
    return await _dio.post(
      request.outcome ? Endpoint.addOutcomes : Endpoint.addIncomes,
      data: request.toJson(),
    );
  }

  Future<Response> getProductCategoriesAndPackages() {
    return _dio.get(Endpoint.getListKategoriProduk);
  }

  Future<Response> getListKasir() {
    return _dio.get(Endpoint.listKasir);
  }

  Future<Response> getListBankAccount() => _dio.get(Endpoint.getListBankAccount);

  Future<Response> getIncomeList(FetchIncomeListUseCaseParams params) =>
      _dio.get(Endpoint.getIncomeList, queryParameters: {"date": params.date});

  Future<Response> updateOrderPrintStatus(UpdateOrderPrintStatusUsecaseParams params) {
    return _dio.post(Endpoint.updateOrderPrintStatus, data: {"order_id": params.orderId});
  }

  Future<Response> updatePreOrderStatus(UpdatePreOrderStatusUseCaseParams params) async {
    return await _dio.post("${Endpoint.changePreOrderStatus}/${params.productId}");
  }
}
