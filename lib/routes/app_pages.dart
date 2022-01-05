import 'package:get/get.dart';
import 'package:it_home/app.dart';
import 'package:it_home/pages/circle/circle_bindings.dart';
import 'package:it_home/pages/circle/circle_page.dart';
import 'package:it_home/pages/home/home_bindings.dart';
import 'package:it_home/pages/home/home_page.dart';
import 'package:it_home/pages/login/login_bindings.dart';
import 'package:it_home/pages/login/login_page.dart';
import 'package:it_home/pages/profile/profile_bindings.dart';
import 'package:it_home/pages/profile/profile_page.dart';
import 'app_routes.dart';

// part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = AppRoutes.MAIN;

  static final routes = [
    GetPage(
      name: AppRoutes.MAIN,
      page: () => App(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.CIRCLE,
      page: () => CirclePage(),
      binding: CircleBindings(),
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBindings(),
    ),
  ];
}
