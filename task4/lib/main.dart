import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task4/routes/app_pages.dart';
import 'package:task4/routes/app_routes.dart';
import 'package:task4/theme/app_colors.dart';
import 'package:task4/theme/app_text_styles.dart';
import 'package:task4/ui/logged_out.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
      elevation: 1,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        // android
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: AppColors.assets,
      ),
      titleTextStyle: AppTextStyles.appBarTitle,
      color: AppColors.white,
    ),
      ),
      routes: AppPages.page,
      initialRoute: AppRoutes.initial,
    );
  }
}

