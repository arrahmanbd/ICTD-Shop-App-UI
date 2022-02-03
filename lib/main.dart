import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himu_shop/bindings/main_binding.dart';
import 'package:himu_shop/config/theme.dart';

import 'package:himu_shop/presentation/routes/app_routes.dart';

void main() {
  runApp(HimuShopApp());
}

class HimuShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: HimuTheme.of(context),
      initialRoute: HimuShopRoutes.splash,
      getPages: HimuShopPages.pages,
      initialBinding: MainBinding(),
    );
  }
}
