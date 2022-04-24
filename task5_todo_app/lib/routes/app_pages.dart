

import 'package:task5_todo_app/ui/bodies/category.dart';

import '../ui/home.dart';
import '../ui/onboarding.dart';
import 'app_routes.dart';

class AppPages {
  static final page = {
    AppRoutes.initial: (context) => const OnBoardingPage(),
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.category: (context) => const CategoriesBody(),
    // AppRoutes.detailedInfo:(context)=>const DetailedInfoPage(),
  };
}
