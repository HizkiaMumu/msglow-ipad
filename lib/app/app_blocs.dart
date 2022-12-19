import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection_container.dart';
import '../presentation/auth/cubit/login_cubit.dart';
import '../presentation/home/cubit/home_cubit.dart';
import '../presentation/home/cubit/printer/printer_cubit.dart';
import '../presentation/home/widgets/input_penjualan/cubit/input_penjualan_cubit.dart';
import '../presentation/home/widgets/penjualan/cubit/penjualan_cubit.dart';
import '../presentation/home/widgets/penjualan/detail/add_customer/cubit/add_customer_cubit.dart';
import '../presentation/home/widgets/profile/cubit/profile_cubit.dart';
import '../presentation/home/widgets/transaction/cubit/transaction_cubit.dart';

class AppBlocs {
  const AppBlocs._();

  static final List<BlocProvider> items = [
    BlocProvider<HomeCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<LoginCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<ProfileCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<PenjualanCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<TransactionCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<PrinterCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<AddCustomerCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<InputPenjualanCubit>(
      create: (context) => getIt.get(),
    ),
  ];
}
