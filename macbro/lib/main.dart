import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/bindings/splash_bindings.dart';
import 'package:macbro/core/theme/app_theme.dart';
import 'package:macbro/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.light,
      getPages: AppPages.pages,
      initialBinding: SplashBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}

