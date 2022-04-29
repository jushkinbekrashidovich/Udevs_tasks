import 'package:get/get.dart';
import 'package:macbro/base/base_controller.dart';
import 'package:macbro/data/models/banners/banner_response.dart';
import 'package:macbro/data/models/categories/categories_response.dart';

class HomeController extends BaseController {
 // int _count = 0;

  RxInt current = 0.obs;

  void setCounter(int index)  {current.value = index;
  update();}

  RxInt get counter => current;


  List<Banners> _banners = [];
  List<Categories> _categories = [];
  List<Orders> _orders = [];


 @override
  void onInit() {
    getBanners();
    getCategoryWithProducts();
    tabController = TabController(length: 1, vsync: this);
    super.onInit();
  }


  List<Banners> get banners => _banners;

  List<Categories> get categories => _categories;

  List<Orders> get order => _orders;

  List<Categories> get categories => _categories;

}
