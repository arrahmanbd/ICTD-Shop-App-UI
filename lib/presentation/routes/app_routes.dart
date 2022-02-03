import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:himu_shop/bindings/main_binding.dart';
import 'package:himu_shop/presentation/pages/Category/categories_binding.dart';
import 'package:himu_shop/presentation/pages/Category/category_products.dart';
import 'package:himu_shop/presentation/pages/cart/cart_binding.dart';
import 'package:himu_shop/presentation/pages/cart/cart_screen.dart';
import 'package:himu_shop/presentation/pages/details/product_details_binding.dart';
import 'package:himu_shop/presentation/pages/details/product_details_screen.dart';
import 'package:himu_shop/presentation/pages/details/view/image_screen.dart';
import 'package:himu_shop/presentation/pages/forgot-password/check_account_screen.dart';
import 'package:himu_shop/presentation/pages/forgot-password/create_new_password_screen.dart';
import 'package:himu_shop/presentation/pages/forgot-password/forgot-password_binding.dart';
import 'package:himu_shop/presentation/pages/forgot-password/send_code_screen.dart';

import 'package:himu_shop/presentation/pages/home/home_screen.dart';
import 'package:himu_shop/presentation/pages/landing_home/home_binding.dart';
import 'package:himu_shop/presentation/pages/landing_home/landing_home.dart';
import 'package:himu_shop/presentation/pages/login/login_binding.dart';
import 'package:himu_shop/presentation/pages/login/login_screen.dart';
import 'package:himu_shop/presentation/pages/splash/splace_screen.dart';
import 'package:himu_shop/presentation/pages/splash/splash_binding.dart';

class HimuShopRoutes {
  static final String splash = '/splash';
  static final String home = '/home';
  static final String login = '/login';
  static final String landingHome = '/landingHome';
  static final String productDetails = '/productDetails';
  static final String cart = '/cart';
  static final String categoryProduct = '/categoryProduct';
  static final String imageScreen = '/imageScreen';
  static final String checkAccount = '/checkAccount';
  static final String sendCodeScreen = '/sendCodeScreen';
  static final String createNewPassword = '/createNewPassword';
}

class HimuShopPages {
  static final pages = [
    GetPage(
        name: HimuShopRoutes.splash,
        page: () => SplashScreen(),
        binding:
            SplashBinding()), //  yasle garda suru maa Yo controller  initiaze hunxa
    GetPage(name: HimuShopRoutes.home, page: () => Home()),
    GetPage(
        name: HimuShopRoutes.login,
        page: () => LoginScreen(),
        bindings: [LoginBinding(), MainBinding()],
        binding: LoginBinding()),
    GetPage(
        name: HimuShopRoutes.landingHome,
        page: () => LandingHome(),
        binding: HomeBinding(),
        bindings: [
          MainBinding(),
          HomeBinding(),
          CategoriesBinding(),
          CartBinding()
        ]),
    GetPage(
        name: HimuShopRoutes.productDetails,
        page: () => ProductDetailsScreen(),
        binding: ProductDetailsBinding(),
        bindings: [ProductDetailsBinding(), MainBinding()]),
    GetPage(
        name: HimuShopRoutes.cart,
        page: () => CartScreen(0),
        bindings: [MainBinding(), CartBinding()]),
    GetPage(
        name: HimuShopRoutes.categoryProduct,
        page: () => CategoryProducts(),
        bindings: [MainBinding(), CategoriesBinding(), HomeBinding()]),

    GetPage(
        name: HimuShopRoutes.imageScreen,
        page: () => ImageScreen(),
        bindings: [
          ProductDetailsBinding(),
        ]),
    GetPage(
        name: HimuShopRoutes.checkAccount,
        page: () => CheckAccountScreen(),
        bindings: [MainBinding(), ForgotPasswordBinding()]),
    GetPage(
        name: HimuShopRoutes.sendCodeScreen, page: () => SendCodeScreen()),
    GetPage(
        name: HimuShopRoutes.createNewPassword,
        page: () => CreateNewPassword())
  ];
}
