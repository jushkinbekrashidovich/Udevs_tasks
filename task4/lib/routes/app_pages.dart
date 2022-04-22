import 'package:task4/routes/app_routes.dart';
import 'package:task4/ui/logged_out.dart';
import 'package:task4/ui/login.dart';
import 'package:task4/ui/profile.dart';
import 'package:task4/ui/register2.dart';

import '../ui/register1.dart';

class AppPages {
  static final page = {
    AppRoutes.initial: (context) => const LoggedOutPage(),
    AppRoutes.register1: (context) => const RegisterPage1(),
    AppRoutes.register2:(context)=> const RegisterPage2(),
    AppRoutes.login:(context)=>  LoginPage(),
    AppRoutes.profile:(context)=> const ProfilePage(),
  };
}