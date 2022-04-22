import 'package:flutter/material.dart';
import 'package:task4/routes/app_pages.dart';
import 'package:task4/routes/app_routes.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      routes: AppPages.page,
      initialRoute: AppRoutes.initial,
    );
  }
}

