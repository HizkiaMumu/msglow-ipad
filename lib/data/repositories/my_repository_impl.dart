import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../app/cubit/main_cubit.dart';
import '../../core/base/usecase/no_param.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/strings.dart';
import '../../core/unions/failure.dart';
import '../../core/utils/date_util.dart';
import '../../domain/entities/base_domain.dart';
import '../../domain/entities/login/login.dart';
import '../../domain/entities/login/user.dart';
import '../../domain/entities/penjualan/cash_amount_suggestion.dart';
import '../../domain/entities/penjualan/customer/customer.dart';
import '../../domain/entities/penjualan/product_list.dart';
import '../../domain/entities/transaction/transaction.dart';
import '../../domain/repositories/my_repository.dart';
import '../../domain/usecases/add_customer_usecase.dart';
import '../../domain/usecases/add_inoutcome_usecase.dart';
import '../../domain/usecases/add_pengeluaran_baru_usecase.dart';
import '../../domain/usecases/calculate_cash_amount_suggestion_usecase.dart';
import '../../domain/usecases/check_login_status_usecase.dart';
import '../../domain/usecases/closing_usecase.dart';
import '../../domain/usecases/do_login_usecase.dart';
import '../../domain/usecases/do_logout_usecase.dart';
import '../../domain/usecases/fetch_customers_usecase.dart';
import '../../domain/usecases/fetch_income_list_usecase.dart';
import '../../domain/usecases/fetch_list_pengeluaran_usecase.dart';
import '../../domain/usecases/fetch_outcomes_usecase.dart';
import '../../domain/usecases/fetch_product_list_usecase.dart';
import '../../domain/usecases/fetch_transactions_usecase.dart';
import '../../domain/usecases/refund_order_usecase.dart';
import '../../domain/usecases/send_closing_mail_usecase.dart';
import '../../domain/usecases/submit_order_usecase.dart';
import '../../domain/usecases/update_order_print_status_usecase.dart';
import '../../domain/usecases/update_pre_order_status_usecase.dart';
import '../../domain/usecases/update_profile_usecase.dart';
import '../local/local_data_source.dart';
import '../remote/remote_data_source.dart';
import '../remote/request/input_pengeluaran/add_pengeluaran_baru_request.dart';
import '../remote/request/refund_order_request.dart';
import '../remote/request/transaction/add_outcome_request.dart';
import '../remote/request/transaction/closing_request.dart';
import '../remote/response/base_response.dart';
import '../remote/response/input_penjualan/list_pengeluaran_response.dart';
import '../remote/response/penjualan/bank_account_list_response.dart';
import '../remote/response/penjualan/customer/customer_element_response.dart';
import '../remote/response/penjualan/customer/status_customer_list_response.dart';
import '../remote/response/penjualan/list_kasir_response.dart';
import '../remote/response/penjualan/product_categories_and_packages_response.dart';
import '../remote/response/penjualan/submit_order_response.dart';
import '../remote/response/transaction/closing_response.dart';
import '../remote/response/transaction/incomes_response.dart';
import '../remote/response/transaction/outcome/outcomes_response.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MyRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params) async {
    final _data = await _remoteDataSource.doLogin(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    await Future.wait([_localDataSource.saveToken(_data.token), _localDataSource.saveUser(_data.user?.toEntity())]);

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, dynamic>> doLogout(DoLogoutUseCaseParams params) async {
    await Future.wait(
      [
        _localDataSource.deleteUser(),
        _localDataSource.deleteToken(),
        _localDataSource.deleteClosingMail(),
      ],
    );

    return const Right(null);
  }

  @override
  Future<Either<Failure, LoginStatus>> checkLoginStatus(CheckLoginStatusUseCaseParams params) async {
    return Right(
      _localDataSource.getToken() == null ? LoginStatus.notLoggedIn : LoginStatus.loggedIn,
    );
  }

  @override
  User? getUser() {
    return _localDataSource.getUser()?.toDomain();
  }

  @override
  Future<Either<Failure, Login>> updateProfile(UpdateProfileUseCaseParams params) async {
    final _data = await _remoteDataSource.updateProfile(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    await _localDataSource.saveUser(_data.user?.toEntity());

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, ProductList>> fetchProductList(FetchProductListUseCaseParams params) async {
    final _data = await _remoteDataSource.fetchProductList(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, SubmitOrderResponse>> submitOrder(SubmitOrderUseCaseParams params) async {
    final _data = await _remoteDataSource.submitOrder(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message),
      );
    }

    return Right(_data);
  }

  @override
  Future<Either<Failure, Customer>> fetchCustomers(FetchCustomersUseCaseParams params) async {
    final _data = await _remoteDataSource.fetchCustomers(params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, Transaction>> fetchTransactions(FetchTransactionsUseCaseParams params) async {
    final _data = await _remoteDataSource.fetchTransactions(params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, CashAmountSuggestion>> calculateCashAmountSuggestion(
      CalculateCashAmountSuggestionUseCaseParams params) async {
    final _data = await _remoteDataSource.calculateCashAmountSuggestion(params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, BaseDomain>> refundOrder(RefundOrderUseCaseParams params) async {
    final _data = await _remoteDataSource.refundOrder(RefundOrderRequest(
      orderId: params.orderId,
      notes: params.refundNote,
    ));

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, CustomerElementResponse>> addCustomer(AddCustomerUseCaseParams params) async {
    final _data = await _remoteDataSource.addCustomer(params.toRequest());
    return Right(_data);
  }

  @override
  Future<Either<Failure, StatusCustomerListResponse>> fetchStatusCustomerList(NoParam params) async {
    final _data = await _remoteDataSource.fetchStatusCustomerList(params);
    return Right(_data);
  }

  @override
  Future<Either<Failure, ClosingResponse>> closing(ClosingUseCaseParams params) async {
    // final _userId = _localDataSource.getUser()?.id;

    final _date = DateUtil.dateTimeToFormattedDate(
      params.filterDate ?? DateTime.now(),
      datePattern: 'yyyy-MM-dd',
    );

    final _data = await _remoteDataSource.closing(
      ClosingRequest(
        startDate: _date,
        endDate: _date,
        userId: params.cashier?.id,
        actualEndingCash: params.actualEndingCash ?? 0,
      ),
    );

    return Right(_data);
  }

  @override
  Future<Either<Failure, ListPengeluaranResponse>> fetchListPengeluaran(
      FetchListPengeluaranUseCaseParams params) async {
    final _data = await _remoteDataSource.fetchListPengeluaran(params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data);
  }

  @override
  Future<Either<Failure, BaseResponse>> addPengeluaranBaru(AddPengeluaranBaruUseCaseParams params) async {
    final _data = await _remoteDataSource.addPengeluaranBaru(AddPengeluaranBaruRequest(
      inputTanggal: params.inputTanggal,
      keterangan: params.keterangan,
      quantity: params.quantity,
      hargaSatuan: params.hargaSatuan,
      bebanLainlain: params.bebanLainlain,
      bebanAtk: params.bebanAtk,
      bebanKendaraan: params.bebanKendaraan,
      kasbonKaryawan: params.kasbonKaryawan,
      hutangUsaha: params.hutangUsaha,
      biayaTambahan: params.biayaTambahan,
    ));

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data);
  }

  @override
  Future<Either<Failure, BaseResponse>> sendClosingMail(SendClosingMailUseCaseParams params) async {
    await _localDataSource.saveClosingMail(params.email);
    final _data = await _remoteDataSource.sendClosingMail(params.toRequest(), params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data);
  }

  @override
  String? getClosingMail() {
    return _localDataSource.getClosingMail();
  }

  @override
  Future<Either<Failure, OutcomesResponse>> fetchOutcomes(FetchOutcomesUseCaseParams params) async {
    final _data = await _remoteDataSource.fetchOutcomes(params);

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data);
  }

  @override
  Future<Either<Failure, BaseResponse>> addInOutcome(AddInOutcomeUseCaseParams params) async {
    final _data = await _remoteDataSource.addInOutcome(AddOutcomeRequest(
      outcome: params.outcome,
      date: params.date,
      title: params.title,
      description: params.description,
      amount: params.amount,
    ));

    if (_data.status == Constants.statusError) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data);
  }

  @override
  Future<ProductCategoriesAndPackagesResponse> getProductCategoriesAndPackages() {
    return _remoteDataSource.getProductCategoriesAndPackagesResponse();
  }

  @override
  Future<ListKasirResponse> getListKasir() {
    return _remoteDataSource.getListKasir();
  }

  @override
  Future<Either<Failure, List<BankAccount>>> fetchBankAccountList() async {
    BankAccountListResponse response = await _remoteDataSource.getListBankAccount();
    if (response.isSuccess) {
      return Right(response.bankAccounts);
    } else {
      return Left(Failure.defaultError(response.message));
    }
  }

  @override
  Future<Either<Failure, IncomeResponse>> getIncomeList({required FetchIncomeListUseCaseParams params}) async {
    IncomeResponse response = await _remoteDataSource.getIncomeList(date: params);
    if (response.isSuccess) {
      return Right(response);
    } else {
      return Left(Failure.defaultError(response.message));
    }
  }

  @override
  Future<Either<Failure, BaseDomain>> updateOrderPrintStatus(UpdateOrderPrintStatusUsecaseParams params) async {
    final _data = await _remoteDataSource.updateOrderPrintStatus(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, BaseDomain>> updatePreOrderStatus(UpdatePreOrderStatusUseCaseParams params) async {
    final _data = await _remoteDataSource.updatePreOrderStatus(params);

    if (_data.status == 'ERR') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }
}
