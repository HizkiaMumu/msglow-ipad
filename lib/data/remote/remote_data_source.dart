import 'package:injectable/injectable.dart';

import '../../core/base/usecase/no_param.dart';
import '../../domain/usecases/calculate_cash_amount_suggestion_usecase.dart';
import '../../domain/usecases/do_login_usecase.dart';
import '../../domain/usecases/fetch_customers_usecase.dart';
import '../../domain/usecases/fetch_income_list_usecase.dart';
import '../../domain/usecases/fetch_list_pengeluaran_usecase.dart';
import '../../domain/usecases/fetch_outcomes_usecase.dart';
import '../../domain/usecases/fetch_product_list_usecase.dart';
import '../../domain/usecases/fetch_transactions_usecase.dart';
import '../../domain/usecases/send_closing_mail_usecase.dart';
import '../../domain/usecases/submit_order_usecase.dart';
import '../../domain/usecases/update_order_print_status_usecase.dart';
import '../../domain/usecases/update_pre_order_status_usecase.dart';
import '../../domain/usecases/update_profile_usecase.dart';
import 'api/api_service.dart';
import 'request/input_pengeluaran/add_pengeluaran_baru_request.dart';
import 'request/penjualan/add_customer_request.dart';
import 'request/refund_order_request.dart';
import 'request/transaction/add_outcome_request.dart';
import 'request/transaction/closing_request.dart';
import 'request/transaction/send_closing_mail_request.dart';
import 'response/base_response.dart';
import 'response/input_penjualan/list_pengeluaran_response.dart';
import 'response/login/login_response.dart';
import 'response/penjualan/bank_account_list_response.dart';
import 'response/penjualan/cash_amount_suggestion_response.dart';
import 'response/penjualan/customer/customer_element_response.dart';
import 'response/penjualan/customer/customer_response.dart';
import 'response/penjualan/customer/status_customer_list_response.dart';
import 'response/penjualan/list_kasir_response.dart';
import 'response/penjualan/product_categories_and_packages_response.dart';
import 'response/penjualan/product_list_response.dart';
import 'response/penjualan/submit_order_response.dart';
import 'response/transaction/closing_response.dart';
import 'response/transaction/incomes_response.dart';
import 'response/transaction/outcome/outcomes_response.dart';
import 'response/transaction/transaction_response.dart';

@lazySingleton
class RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSource(this._apiService);

  Future<LoginResponse> doLogin(DoLoginUseCaseParams params) async {
    final _response = await _apiService.doLogin(params);
    return LoginResponse.fromJson(_response.data);
  }

  Future<LoginResponse> updateProfile(UpdateProfileUseCaseParams params) async {
    final _response = await _apiService.updateProfile(params);
    return LoginResponse.fromJson(_response.data);
  }

  Future<ProductListResponse> fetchProductList(FetchProductListUseCaseParams params) async {
    final _response = await _apiService.fetchProductList(params);
    return ProductListResponse.fromJson(_response.data);
  }

  Future<CustomerResponse> fetchCustomers(FetchCustomersUseCaseParams params) async {
    final _response = await _apiService.fetchCustomers(params);
    return CustomerResponse.fromJson(_response.data);
  }

  Future<TransactionResponse> fetchTransactions(FetchTransactionsUseCaseParams params) async {
    final _response = await _apiService.fetchTransactions(params);
    return TransactionResponse.fromJson(_response.data);
  }

  Future<SubmitOrderResponse> submitOrder(SubmitOrderUseCaseParams params) async {
    final _response = await _apiService.submitOrder(params);
    return SubmitOrderResponse.fromJson(_response.data);
  }

  Future<BaseResponse> refundOrder(RefundOrderRequest request) async {
    final _response = await _apiService.refundOrder(request);
    return BaseResponse.fromJson(_response.data);
  }

  Future<CashAmountSuggestionResponse> calculateCashAmountSuggestion(
      CalculateCashAmountSuggestionUseCaseParams params) async {
    final _response = await _apiService.calculateCashAmountSuggestion(params);
    return CashAmountSuggestionResponse.fromJson(_response.data);
  }

  Future<CustomerElementResponse> addCustomer(AddCustomerRequest request) async {
    final _response = await _apiService.addCustomer(request);
    return CustomerElementResponse.fromJson(_response.data);
  }

  Future<StatusCustomerListResponse> fetchStatusCustomerList(NoParam params) async {
    final _response = await _apiService.fetchStatusCustomerList(params);
    return StatusCustomerListResponse.fromJson(_response.data);
  }

  Future<ClosingResponse> closing(ClosingRequest request) async {
    final _response = await _apiService.closing(request);
    return ClosingResponse.fromJson(_response.data);
  }

  Future<ListPengeluaranResponse> fetchListPengeluaran(FetchListPengeluaranUseCaseParams params) async {
    final _response = await _apiService.fetchListPengeluaran(params);
    return ListPengeluaranResponse.fromJson(_response.data);
  }

  Future<BaseResponse> addPengeluaranBaru(AddPengeluaranBaruRequest request) async {
    final _response = await _apiService.addPengeluaranBaru(request);
    return BaseResponse.fromJson(_response.data);
  }

  Future<BaseResponse> sendClosingMail(SendClosingMailRequest request, SendClosingMailUseCaseParams params) async {
    final _response = await _apiService.sendClosingMail(request, params);
    return BaseResponse.fromJson(_response.data);
  }

  Future<OutcomesResponse> fetchOutcomes(FetchOutcomesUseCaseParams params) async {
    final _response = await _apiService.fetchOutcomes(params);
    return OutcomesResponse.fromJson(_response.data);
  }

  Future<BaseResponse> addInOutcome(AddOutcomeRequest request) async {
    final _response = await _apiService.addInOutcome(request);
    return BaseResponse.fromJson(_response.data);
  }

  Future<ProductCategoriesAndPackagesResponse> getProductCategoriesAndPackagesResponse() async {
    final response = await _apiService.getProductCategoriesAndPackages();
    return ProductCategoriesAndPackagesResponse.fromJson(response.data);
  }

  Future<ListKasirResponse> getListKasir() async {
    final response = await _apiService.getListKasir();
    return ListKasirResponse.fromJson(response.data);
  }

  Future<BankAccountListResponse> getListBankAccount() async {
    final response = await _apiService.getListBankAccount();
    return BankAccountListResponse.fromJson(response.data);
  }

  Future<IncomeResponse> getIncomeList({required FetchIncomeListUseCaseParams date}) async {
    final response = await _apiService.getIncomeList(date);
    return IncomeResponse.fromJson(response.data);
  }

  Future<BaseResponse> updateOrderPrintStatus(UpdateOrderPrintStatusUsecaseParams params) async {
    final _response = await _apiService.updateOrderPrintStatus(params);
    return BaseResponse.fromJson(_response.data);
  }

  Future<BaseResponse> updatePreOrderStatus(UpdatePreOrderStatusUseCaseParams params) async {
    final _response = await _apiService.updatePreOrderStatus(params);
    return BaseResponse.fromJson(_response.data);
  }
}
