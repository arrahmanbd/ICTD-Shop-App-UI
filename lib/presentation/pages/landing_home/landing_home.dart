import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himu_shop/presentation/pages/Category/Category.dart';
import 'package:himu_shop/presentation/pages/account/accout_screen.dart';
import 'package:himu_shop/presentation/pages/cart/cart_screen.dart';

import 'package:himu_shop/presentation/pages/home/home_screen.dart';
import 'package:himu_shop/presentation/pages/landing_home/home_controller.dart';
import 'package:himu_shop/presentation/widgets/bottom_menu.dart';

class LandingHome extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Obx(() {
                int currentIndex = controller.selectedIndex.value;
                return IndexedStack(
                  index: currentIndex,
                  children: [
                    Home(
                      index: currentIndex,
                    ),
                    CategorieScreen(currentIndex),
                    CartScreen(currentIndex),
                    AccountScreen(currentIndex)
                  ],
                );
              }),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => SajilodokanBottomMenu(
            bottomMenuIndex: controller.selectedIndex.value,
            onChanged: (index) {
              controller.updateIndexSelected(index);
            },
          ),
        ));
  }
}
