import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task5_todo_app/routes/app_routes.dart';
import 'package:task5_todo_app/theme/app_colors.dart';
import 'package:task5_todo_app/theme/app_text_styles.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170,),
              child: Image.asset('assets/image1.png'),
            ),
            Text('Reminders made simple',style: AppTextStyles.ktextOnboarding,),
            SafeArea(
              bottom: true,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.home);
                },
                child: Container(
                  height: 56.29,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Center(child: Text('Get Started')),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.green1,
                        AppColors.green2,
                        AppColors.green3,
                      ]
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}