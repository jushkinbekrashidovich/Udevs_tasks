import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/core/theme/app_text_style.dart';

import '../../controller/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (ctr) =>  Scaffold(
        body:  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('MacBro', style: AppTextStyles.splashtitle,),
              Text('For clients', style: AppTextStyles.splashsubtitle,),
            ],
          ),
        ),
      ),
    );
  }
}
