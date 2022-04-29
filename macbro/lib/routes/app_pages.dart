import 'package:get/get.dart';
import 'package:macbro/ui/main/profile/detail/register.dart';
import 'package:macbro/ui/main/profile/detail/verification.dart';

import '../bindings/main_bindings.dart';
import '../bindings/splash_bindings.dart';
import '../ui/internet_connection/internet_connection_page.dart';
import '../ui/main/main/main_page.dart';
import '../ui/splash/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBindings(),
    ),
    GetPage(
      name: AppRoutes.verication,
      page: () => const VerificationPage(),
    //  binding: MainBindings(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: AppRoutes.internetConnection,
      page: () => const InternetConnectionPage(),
    ),
  ];
}