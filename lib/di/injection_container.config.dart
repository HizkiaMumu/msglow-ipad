// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart' as _i9;
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../app/cubit/main_cubit.dart' as _i43;
import '../core/libraries/thermal_printer_manager.dart' as _i10;
import '../data/local/hive/hive_manager.dart' as _i5;
import '../data/local/local_data_source.dart' as _i8;
import '../data/remote/api/api_service.dart' as _i12;
import '../data/remote/remote_data_source.dart' as _i13;
import '../data/repositories/my_repository_impl.dart' as _i15;
import '../domain/repositories/my_repository.dart' as _i14;
import '../domain/usecases/add_customer_usecase.dart' as _i23;
import '../domain/usecases/add_inoutcome_usecase.dart' as _i24;
import '../domain/usecases/add_pengeluaran_baru_usecase.dart' as _i25;
import '../domain/usecases/calculate_cash_amount_suggestion_usecase.dart'
    as _i26;
import '../domain/usecases/check_login_status_usecase.dart' as _i27;
import '../domain/usecases/closing_usecase.dart' as _i28;
import '../domain/usecases/do_login_usecase.dart' as _i29;
import '../domain/usecases/do_logout_usecase.dart' as _i30;
import '../domain/usecases/fetch_bank_account_list_usecase.dart' as _i31;
import '../domain/usecases/fetch_customers_usecase.dart' as _i32;
import '../domain/usecases/fetch_income_list_usecase.dart' as _i33;
import '../domain/usecases/fetch_list_pengeluaran_usecase.dart' as _i34;
import '../domain/usecases/fetch_outcomes_usecase.dart' as _i35;
import '../domain/usecases/fetch_product_list_usecase.dart' as _i36;
import '../domain/usecases/fetch_status_customer_list_usecase.dart' as _i37;
import '../domain/usecases/fetch_transactions_usecase.dart' as _i38;
import '../domain/usecases/get_closing_mail_usecase.dart' as _i39;
import '../domain/usecases/get_user_usecase.dart' as _i40;
import '../domain/usecases/refund_item_usecase.dart' as _i16;
import '../domain/usecases/refund_order_usecase.dart' as _i17;
import '../domain/usecases/send_closing_mail_usecase.dart' as _i18;
import '../domain/usecases/submit_order_usecase.dart' as _i19;
import '../domain/usecases/update_order_print_status_usecase.dart' as _i20;
import '../domain/usecases/update_pre_order_status_usecase.dart' as _i21;
import '../domain/usecases/update_profile_usecase.dart' as _i22;
import '../presentation/auth/cubit/login_cubit.dart' as _i42;
import '../presentation/home/cubit/home_cubit.dart' as _i7;
import '../presentation/home/cubit/printer/printer_cubit.dart' as _i45;
import '../presentation/home/widgets/input_penjualan/cubit/input_penjualan_cubit.dart'
    as _i41;
import '../presentation/home/widgets/penjualan/cubit/penjualan_cubit.dart'
    as _i44;
import '../presentation/home/widgets/penjualan/detail/add_customer/cubit/add_customer_cubit.dart'
    as _i48;
import '../presentation/home/widgets/profile/cubit/profile_cubit.dart' as _i46;
import '../presentation/home/widgets/transaction/cubit/transaction_cubit.dart'
    as _i47;
import 'register_module.dart' as _i49; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
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
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.factory<_i10.ThermalPrinterManager>(() => _i10.ThermalPrinterManager(
      get<_i9.PrinterBluetoothManager>(), get<_i3.BluetoothManager>()));
  gh.lazySingleton<_i11.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'BaseUrl'), get<_i8.LocalDataSource>()));
  gh.lazySingleton<_i12.ApiService>(() => _i12.ApiService(get<_i11.Dio>()));
  gh.lazySingleton<_i13.RemoteDataSource>(
      () => _i13.RemoteDataSource(get<_i12.ApiService>()));
  gh.lazySingleton<_i14.MyRepository>(() => _i15.MyRepositoryImpl(
      get<_i13.RemoteDataSource>(), get<_i8.LocalDataSource>()));
  gh.lazySingleton<_i16.RefundItemUseCase>(
      () => _i16.RefundItemUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i17.RefundOrderUseCase>(
      () => _i17.RefundOrderUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i18.SendClosingMailUseCase>(() =>
      _i18.SendClosingMailUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i19.SubmitOrderUseCase>(
      () => _i19.SubmitOrderUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i20.UpdateOrderPrintStatusUsecase>(() =>
      _i20.UpdateOrderPrintStatusUsecase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i21.UpdatePreOrderStatusUsecase>(() =>
      _i21.UpdatePreOrderStatusUsecase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i22.UpdateProfileUseCase>(
      () => _i22.UpdateProfileUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i23.AddCustomerUseCase>(
      () => _i23.AddCustomerUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i24.AddInOutcomeUseCase>(
      () => _i24.AddInOutcomeUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i25.AddPengeluaranBaruUseCase>(() =>
      _i25.AddPengeluaranBaruUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i26.CalculateCashAmountSuggestionUseCase>(() =>
      _i26.CalculateCashAmountSuggestionUseCase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i27.CheckLoginStatusUseCase>(() =>
      _i27.CheckLoginStatusUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i28.ClosingUseCase>(
      () => _i28.ClosingUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i29.DoLoginUseCase>(
      () => _i29.DoLoginUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i30.DoLogoutUseCase>(
      () => _i30.DoLogoutUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i31.FetchBankAccountListUse>(() =>
      _i31.FetchBankAccountListUse(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i32.FetchCustomersUseCase>(
      () => _i32.FetchCustomersUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i33.FetchIncomeListUseCase>(() =>
      _i33.FetchIncomeListUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i34.FetchListPengeluaranUseCase>(() =>
      _i34.FetchListPengeluaranUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i35.FetchOutcomesUseCase>(
      () => _i35.FetchOutcomesUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i36.FetchProductListUseCase>(() =>
      _i36.FetchProductListUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i37.FetchStatusCustomerListUseCase>(() =>
      _i37.FetchStatusCustomerListUseCase(
          myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i38.FetchTransactionsUseCase>(() =>
      _i38.FetchTransactionsUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i39.GetClosingMailUseCase>(
      () => _i39.GetClosingMailUseCase(myRepository: get<_i14.MyRepository>()));
  gh.lazySingleton<_i40.GetUserUseCase>(
      () => _i40.GetUserUseCase(myRepository: get<_i14.MyRepository>()));
  gh.factory<_i41.InputPenjualanCubit>(() => _i41.InputPenjualanCubit(
      get<_i34.FetchListPengeluaranUseCase>(),
      get<_i25.AddPengeluaranBaruUseCase>()));
  gh.factory<_i42.LoginCubit>(
      () => _i42.LoginCubit(get<_i29.DoLoginUseCase>()));
  gh.factory<_i43.MainCubit>(
      () => _i43.MainCubit(get<_i27.CheckLoginStatusUseCase>()));
  gh.factory<_i44.PenjualanCubit>(() => _i44.PenjualanCubit(
      get<_i36.FetchProductListUseCase>(),
      get<_i19.SubmitOrderUseCase>(),
      get<_i32.FetchCustomersUseCase>(),
      get<_i10.ThermalPrinterManager>(),
      get<_i31.FetchBankAccountListUse>(),
      get<_i20.UpdateOrderPrintStatusUsecase>()));
  gh.factory<_i45.PrinterCubit>(() => _i45.PrinterCubit(
      get<_i10.ThermalPrinterManager>(),
      get<_i40.GetUserUseCase>(),
      get<_i20.UpdateOrderPrintStatusUsecase>()));
  gh.factory<_i46.ProfileCubit>(() => _i46.ProfileCubit(
      get<_i30.DoLogoutUseCase>(),
      get<_i40.GetUserUseCase>(),
      get<_i22.UpdateProfileUseCase>()));
  gh.factory<_i47.TransactionCubit>(() => _i47.TransactionCubit(
      get<_i38.FetchTransactionsUseCase>(),
      get<_i17.RefundOrderUseCase>(),
      get<_i16.RefundItemUseCase>(),
      get<_i28.ClosingUseCase>(),
      get<_i18.SendClosingMailUseCase>(),
      get<_i39.GetClosingMailUseCase>(),
      get<_i35.FetchOutcomesUseCase>(),
      get<_i24.AddInOutcomeUseCase>(),
      get<_i33.FetchIncomeListUseCase>(),
      get<_i20.UpdateOrderPrintStatusUsecase>(),
      get<_i21.UpdatePreOrderStatusUsecase>()));
  gh.factory<_i48.AddCustomerCubit>(() => _i48.AddCustomerCubit(
      get<_i37.FetchStatusCustomerListUseCase>(),
      get<_i23.AddCustomerUseCase>()));
  return get;
}

class _$RegisterModule extends _i49.RegisterModule {}
