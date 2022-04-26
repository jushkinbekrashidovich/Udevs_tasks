import 'package:macbro/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:macbro/routes/app_routes.dart';

class SplashController extends BaseController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        Get.offNamed(AppRoutes.main);
      },
    );
  }
}
