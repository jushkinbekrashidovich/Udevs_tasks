import 'package:get/get.dart';

import '../controller/main/home/home_controller.dart';
import '../controller/main/main_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), fenix: true);
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
  }
}
