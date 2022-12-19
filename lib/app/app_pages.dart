import 'package:get/route_manager.dart';

import '../presentation/auth/login_page.dart';
import '../presentation/home/home_page.dart';

class AppPages {
  const AppPages._();

  static final List<GetPage> routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
    ),
  ];
}
