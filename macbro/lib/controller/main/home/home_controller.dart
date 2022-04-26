import 'package:get/get.dart';
import 'package:macbro/base/base_controller.dart';

class HomeController extends BaseController {
 // int _count = 0;

  RxInt current = 0.obs;

  // void setCount(int index) {
  //   _count = index;
  //   update();
  // }

  void setCounter(int index) => current.value = index;

 // int get count => _count;

  RxInt get counter => current;
}
