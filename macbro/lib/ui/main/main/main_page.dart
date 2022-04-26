import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro/core/theme/app_text_style.dart';
import 'package:macbro/ui/main/profile/profile_page.dart';

import '../../../controller/main/main_controller.dart';
import '../../../core/theme/app_colors.dart';
import '../favorites/favorites_page.dart';
import '../home/home_page.dart';
import '../orders/orders_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
               index: controller.bottomMenu.index,
          children:  [
            HomePage(),
           const MyOrdersPage(),
           const MyFavoritesPage(),
           const ProfilePage(),
          ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: AppColors.unselectedBottomNavItem,
          selectedItemColor: AppColors.assets,
          onTap: (pos)=>controller.setMenu(BottomMenu.values[pos]),
          currentIndex: controller.bottomMenu.index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.white,
          selectedLabelStyle: AppTextStyles.selectedLabelStyle,
          unselectedLabelStyle: AppTextStyles.unselectedLabelStyle,
          elevation: 8,
          items: [
              _bottomNavigationBarItem(activeIcon: 'ic_active_home', icon: 'ic_home', label: 'home'.tr),
              _bottomNavigationBarItem(activeIcon: 'ic_active_buy', icon: 'ic_buy', label: 'my orders'.tr),
              _bottomNavigationBarItem(activeIcon: 'ic_active_favorite', icon: 'ic_favorite', label: 'favorites'.tr),
              _bottomNavigationBarItem(activeIcon: 'ic_active_profile', icon: 'ic_profile', label: 'profile'.tr),
          ],
          ),
          
        );
      }
    );
  }
}

_bottomNavigationBarItem({
    required String activeIcon,
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset('assets/svg/$icon.svg'),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset('assets/svg/$activeIcon.svg'),
      ),
      label: label,
    );
  }
