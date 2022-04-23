import 'package:task4/routes/app_routes.dart';
import 'package:task4/ui/chat/chat.dart';
import 'package:task4/ui/chat/chat_details.dart';
import 'package:task4/ui/homepage.dart/photo_expanded.dart';
import 'package:task4/ui/logged_out.dart';
import 'package:task4/ui/login.dart';
import 'package:task4/ui/search/photo_details.dart';
import 'package:task4/ui/homepage.dart/photogram.dart';
import 'package:task4/ui/profile.dart';
import 'package:task4/ui/register2.dart';
import 'package:task4/ui/search/search.dart';

import '../ui/register1.dart';

class AppPages {
  static final page = {
    AppRoutes.initial: (context) => const LoggedOutPage(),
    AppRoutes.register1: (context) => const RegisterPage1(),
    AppRoutes.register2:(context)=>  RegisterPage2(),
    AppRoutes.login:(context)=>  LoginPage(),
    AppRoutes.profile:(context)=> ProfilePage(),
    AppRoutes.home:(context)=> PhotogramPage(),
    AppRoutes.chat:(context)=> ChatPage(),
    AppRoutes.search:(context)=> SearchPage(),
    AppRoutes.photodetails:(context)=> PhotoDetailsPage(),
    AppRoutes.chatdetails:(context)=> ChatDetails(),
    AppRoutes.photoexpanded:(context)=> PhotoExpandedPage(),
  };
}