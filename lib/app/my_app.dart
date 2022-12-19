import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constants/strings.dart';
import '../core/style/app_theme.dart';
import '../data/local/local_data_source.dart';
import '../di/injection_container.dart';
import '../presentation/auth/login_page.dart';
import '../presentation/home/home_page.dart';
import 'app_blocs.dart';
import 'app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );
    final _initialRoute = getIt.get<LocalDataSource>().getToken() == null
        ? LoginPage.routeName
        : HomePage.routeName;

    return MultiBlocProvider(
      providers: AppBlocs.items,
      child: ScreenUtilInit(
        designSize: const Size(1440, 990),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: AppTheme.lightTheme,
            initialRoute: _initialRoute,
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
