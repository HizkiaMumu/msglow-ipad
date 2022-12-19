// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart' as _i9;
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../app/cubit/main_cubit.dart' as _i42;
import '../core/libraries/thermal_printer_manager.dart' as _i10;
import '../data/local/hive/hive_manager.dart' as _i5;
import '../data/local/local_data_source.dart' as _i8;
import '../data/remote/api/api_service.dart' as _i12;
import '../data/remote/remote_data_source.dart' as _i13;
import '../data/repositories/my_repository_impl.dart' as _i15;
import '../domain/repositories/my_repository.dart' as _i14;
import '../domain/usecases/add_customer_usecase.dart' as _i22;
import '../domain/usecases/add_inoutcome_usecase.dart' as _i23;
import '../domain/usecases/add_pengeluaran_baru_usecase.dart' as _i24;
import '../domain/usecases/calculate_cash_amount_suggestion_usecase.dart'
    as _i25;
import '../domain/usecases/check_login_status_usecase.dart' as _i26;
import '../domain/usecases/closing_usecase.dart' as _i27;
import '../domain/usecases/do_login_usecase.dart' as _i28;
import '../domain/usecases/do_logout_usecase.dart' as _i29;
import '../domain/usecases/fetch_bank_account_list_usecase.dart' as _i30;
import '../domain/usecases/fetch_customers_usecase.dart' as _i31;
import '../domain/usecases/fetch_income_list_usecase.dart' as _i32;
import '../domain/usecases/fetch_list_pengeluaran_usecase.dart' as _i33;
import '../domain/usecases/fetch_outcomes_usecase.dart' as _i34;
import '../domain/usecases/fetch_product_list_usecase.dart' as _i35;
import '../domain/usecases/fetch_status_customer_list_usecase.dart' as _i36;
import '../domain/usecases/fetch_transactions_usecase.dart' as _i37;
import '../domain/usecases/get_closing_mail_usecase.dart' as _i38;
import '../domain/usecases/get_user_usecase.dart' as _i39;
import '../domain/usecases/refund_order_usecase.dart' as _i16;
import '../domain/usecases/send_closing_mail_usecase.dart' as _i17;
import '../domain/usecases/submit_order_usecase.dart' as _i18;
import '../domain/usecases/update_order_print_status_usecase.dart' as _i19;
import '../domain/usecases/update_pre_order_status_usecase.dart' as _i20;
import '../domain/usecases/update_profile_usecase.dart' as _i21;
import '../presentation/auth/cubit/login_cubit.dart' as _i41;
import '../presentation/home/cubit/home_cubit.dart' as _i7;
import '../presentation/home/cubit/printer/printer_cubit.dart' as _i44;
import '../presentation/home/widgets/input_penjualan/cubit/input_penjualan_cubit.dart'
    as _i40;
import '../presentation/home/widgets/penjualan/cubit/penjualan_cubit.dart'
    as _i43;
import '../presentation/home/widgets/penjualan/detail/add_customer/cubit/add_customer_cubit.dart'
    as _i47;
import '../presentation/home/widgets/profile/cubit/profile_cubit.dart' as _i45;
import '../presentation/home/widgets/transaction/cubit/transaction_cubit.dart'
    as _i46;
import 'register_module.dart' as _i48; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BluetoothManager>(
      () => registerModule.bluetoothManager());
  gh.lazySingleton<_i4.Box<dynamic>>(() => registerModule.hiveBoxMsGlow());
  gh.lazySingleton<_i5.HiveManager>(
      () => _i5.HiveManager(get<_i6.Box<dynamic>>()));
  gh.factory<_i7.HomeCubit>(() => _i7.HomeCubit());
  gh.lazySingleton<_i8.LocalDataSource>(
      () => _i8.LocalDataSource(get<_i5.HiveManager>()));
  gh.lazySingleton<_i9.PrinterBluetoothManager>(
      () => registerModule.printerManager());
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i10.ThermalPrinterManager>(() => _i10.ThermalPrinterManager(
        get<_i9.PrinterBluetoothManager>(),
        get<_i3.BluetoothManager>(),
      ));
  gh.lazySingleton<_i11.Dio>(() => registerModule.dio(
        get<String>(instanceName: 'BaseUrl'),
        get<_i8.LocalDataSource>(),
      ));
  gh.lazySingleton<_i12.ApiService>(() => _i12.ApiService(get<_i11.Dio>()));
  gh.lazySingleton<_i13.RemoteDataSource>(
      () => _i13.RemoteDataSource(get<_i12.ApiService>()));
  gh.lazySingleton<_i14.MyRepository>(() => _i15.MyRepositoryImpl(
        get<_i13.RemoteDataSource>(),
        get<_i8.LocalDataSource>(),
      ));
  gh.lazySingleton<_i16.RefundOrderUseCase>(
      () => _i16.RefundOrderUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i17.SendClosingMailUseCase>(() =>
      _i17.SendClosingMailUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i18.SubmitOrderUseCase>(
      () => _i18.SubmitOrderUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i19.UpdateOrderPrintStatusUsecase>(() =>
      _i19.UpdateOrderPrintStatusUsecase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i20.UpdatePreOrderStatusUsecase>(() =>
      _i20.UpdatePreOrderStatusUsecase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i21.UpdateProfileUseCase>(
      () => _i21.UpdateProfileUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i22.AddCustomerUseCase>(
      () => _i22.AddCustomerUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i23.AddInOutcomeUseCase>(
      () => _i23.AddInOutcomeUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i24.AddPengeluaranBaruUseCase>(() =>
      _i24.AddPengeluaranBaruUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i25.CalculateCashAmountSuggestionUseCase>(() =>
      _i25.CalculateCashAmountSuggestionUseCase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i26.CheckLoginStatusUseCase>(() =>
      _i26.CheckLoginStatusUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i27.ClosingUseCase>(
      () => _i27.ClosingUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i28.DoLoginUseCase>(
      () => _i28.DoLoginUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i29.DoLogoutUseCase>(
      () => _i29.DoLogoutUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i30.FetchBankAccountListUse>(() =>
      _i30.FetchBankAccountListUse(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i31.FetchCustomersUseCase>(
      () => _i31.FetchCustomersUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i32.FetchIncomeListUseCase>(() =>
      _i32.FetchIncomeListUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i33.FetchListPengeluaranUseCase>(() =>
      _i33.FetchListPengeluaranUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i34.FetchOutcomesUseCase>(
      () => _i34.FetchOutcomesUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i35.FetchProductListUseCase>(() =>
      _i35.FetchProductListUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i36.FetchStatusCustomerListUseCase>(() =>
      _i36.FetchStatusCustomerListUseCase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i37.FetchTransactionsUseCase>(() =>
      _i37.FetchTransactionsUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i38.GetClosingMailUseCase>(
      () => _i38.GetClosingMailUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i39.GetUserUseCase>(
      () => _i39.GetUserUseCase(myRepository: get<_i14.MyRepository>()));
  gh.factory<_i40.InputPenjualanCubit>(() => _i40.InputPenjualanCubit(
        get<_i33.FetchListPengeluaranUseCase>(),
        get<_i24.AddPengeluaranBaruUseCase>(),
      ));
  gh.factory<_i41.LoginCubit>(
      () => _i41.LoginCubit(get<_i28.DoLoginUseCase>()));
  gh.factory<_i42.MainCubit>(
      () => _i42.MainCubit(get<_i26.CheckLoginStatusUseCase>()));
  gh.factory<_i43.PenjualanCubit>(() => _i43.PenjualanCubit(
        get<_i35.FetchProductListUseCase>(),
        get<_i18.SubmitOrderUseCase>(),
        get<_i31.FetchCustomersUseCase>(),
        get<_i10.ThermalPrinterManager>(),
        get<_i30.FetchBankAccountListUse>(),
        get<_i19.UpdateOrderPrintStatusUsecase>(),
      ));
  gh.factory<_i44.PrinterCubit>(() => _i44.PrinterCubit(
        get<_i10.ThermalPrinterManager>(),
        get<_i39.GetUserUseCase>(),
        get<_i19.UpdateOrderPrintStatusUsecase>(),
      ));
  gh.factory<_i45.ProfileCubit>(() => _i45.ProfileCubit(
        get<_i29.DoLogoutUseCase>(),
        get<_i39.GetUserUseCase>(),
        get<_i21.UpdateProfileUseCase>(),
      ));
  gh.factory<_i46.TransactionCubit>(() => _i46.TransactionCubit(
        get<_i37.FetchTransactionsUseCase>(),
        get<_i16.RefundOrderUseCase>(),
        get<_i27.ClosingUseCase>(),
        get<_i17.SendClosingMailUseCase>(),
        get<_i38.GetClosingMailUseCase>(),
        get<_i34.FetchOutcomesUseCase>(),
        get<_i23.AddInOutcomeUseCase>(),
        get<_i32.FetchIncomeListUseCase>(),
        get<_i19.UpdateOrderPrintStatusUsecase>(),
        get<_i20.UpdatePreOrderStatusUsecase>(),
      ));
  gh.factory<_i47.AddCustomerCubit>(() => _i47.AddCustomerCubit(
        get<_i36.FetchStatusCustomerListUseCase>(),
        get<_i22.AddCustomerUseCase>(),
      ));
  return get;
}

class _$RegisterModule extends _i48.RegisterModule {}
