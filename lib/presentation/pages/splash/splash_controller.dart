import 'package:get/get.dart';
import 'package:himu_shop/domain/repository/api_repository.dart';
import 'package:himu_shop/domain/repository/local_repository.dart';
import 'package:himu_shop/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;
  SplashController(
      {required this.localRepositoryInterface, required this.apiRepositoryInterface});

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  void validateSession() async {
    final token = await localRepositoryInterface.getToken();
    if (token != null) {
      final result = await apiRepositoryInterface.getUserFromToken(token);
      if (result != null) {
        await localRepositoryInterface.saveUser(result.user);
        Get.offNamed(HimuShopRoutes.landingHome);
      } else {
        Get.offNamed(HimuShopRoutes.landingHome);
      }
    } else
      Get.offNamed(HimuShopRoutes.landingHome);
  }
}
