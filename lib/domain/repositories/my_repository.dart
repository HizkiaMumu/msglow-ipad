import 'package:dartz/dartz.dart';

import '../../app/cubit/main_cubit.dart';
import '../../core/base/usecase/no_param.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/base_response.dart';
import '../../data/remote/response/input_penjualan/list_pengeluaran_response.dart';
import '../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../../data/remote/response/penjualan/customer/customer_element_response.dart';
import '../../data/remote/response/penjualan/customer/status_customer_list_response.dart';
import '../../data/remote/response/penjualan/list_kasir_response.dart';
import '../../data/remote/response/penjualan/product_categories_and_packages_response.dart';
import '../../data/remote/response/penjualan/submit_order_response.dart';
import '../../data/remote/response/transaction/closing_response.dart';
import '../../data/remote/response/transaction/incomes_response.dart';
import '../../data/remote/response/transaction/outcome/outcomes_response.dart';
import '../entities/base_domain.dart';
import '../entities/login/login.dart';
import '../entities/login/user.dart';
import '../entities/penjualan/cash_amount_suggestion.dart';
import '../entities/penjualan/customer/customer.dart';
import '../entities/penjualan/product_list.dart';
import '../entities/transaction/transaction.dart';
import '../usecases/add_customer_usecase.dart';
import '../usecases/add_inoutcome_usecase.dart';
import '../usecases/add_pengeluaran_baru_usecase.dart';
import '../usecases/calculate_cash_amount_suggestion_usecase.dart';
import '../usecases/check_login_status_usecase.dart';
import '../usecases/closing_usecase.dart';
import '../usecases/do_login_usecase.dart';
import '../usecases/do_logout_usecase.dart';
import '../usecases/fetch_customers_usecase.dart';
import '../usecases/fetch_income_list_usecase.dart';
import '../usecases/fetch_list_pengeluaran_usecase.dart';
import '../usecases/fetch_outcomes_usecase.dart';
import '../usecases/fetch_product_list_usecase.dart';
import '../usecases/fetch_transactions_usecase.dart';
import '../usecases/refund_order_usecase.dart';
import '../usecases/send_closing_mail_usecase.dart';
import '../usecases/submit_order_usecase.dart';
import '../usecases/update_order_print_status_usecase.dart';
import '../usecases/update_pre_order_status_usecase.dart';
import '../usecases/update_profile_usecase.dart';

abstract class MyRepository {
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params);

  Future<Either<Failure, dynamic>> doLogout(DoLogoutUseCaseParams params);

  Future<Either<Failure, LoginStatus>> checkLoginStatus(CheckLoginStatusUseCaseParams params);

  User? getUser();

  Future<Either<Failure, Login>> updateProfile(UpdateProfileUseCaseParams params);

  Future<Either<Failure, ProductList>> fetchProductList(FetchProductListUseCaseParams params);

  Future<Either<Failure, Customer>> fetchCustomers(FetchCustomersUseCaseParams params);

  Future<Either<Failure, Transaction>> fetchTransactions(FetchTransactionsUseCaseParams params);

  Future<Either<Failure, SubmitOrderResponse>> submitOrder(SubmitOrderUseCaseParams params);

  Future<Either<Failure, CashAmountSuggestion>> calculateCashAmountSuggestion(
      CalculateCashAmountSuggestionUseCaseParams params);

  Future<Either<Failure, BaseDomain>> refundOrder(RefundOrderUseCaseParams params);

  Future<Either<Failure, CustomerElementResponse>> addCustomer(AddCustomerUseCaseParams params);

  Future<Either<Failure, StatusCustomerListResponse>> fetchStatusCustomerList(NoParam params);

  Future<Either<Failure, ClosingResponse>> closing(ClosingUseCaseParams params);

  Future<Either<Failure, ListPengeluaranResponse>> fetchListPengeluaran(FetchListPengeluaranUseCaseParams params);

  Future<Either<Failure, BaseResponse>> addPengeluaranBaru(AddPengeluaranBaruUseCaseParams params);

  Future<Either<Failure, BaseResponse>> sendClosingMail(SendClosingMailUseCaseParams params);

  String? getClosingMail();

  Future<Either<Failure, OutcomesResponse>> fetchOutcomes(FetchOutcomesUseCaseParams params);

  Future<Either<Failure, BaseResponse>> addInOutcome(AddInOutcomeUseCaseParams params);

  Future<ProductCategoriesAndPackagesResponse> getProductCategoriesAndPackages();

  Future<ListKasirResponse> getListKasir();

  Future<Either<Failure, List<BankAccount>>> fetchBankAccountList();

  Future<Either<Failure, IncomeResponse>> getIncomeList({required FetchIncomeListUseCaseParams params});

  Future<Either<Failure, BaseDomain>> updateOrderPrintStatus(UpdateOrderPrintStatusUsecaseParams params);

  Future<Either<Failure, BaseDomain>> updatePreOrderStatus(UpdatePreOrderStatusUseCaseParams params);
}
