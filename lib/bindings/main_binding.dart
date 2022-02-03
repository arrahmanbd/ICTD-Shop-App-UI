import 'package:get/get.dart';
import 'package:himu_shop/data/datasource/api_repository_impl.dart';
import 'package:himu_shop/data/datasource/local_repository_impl.dart';
import 'package:himu_shop/domain/repository/api_repository.dart';
import 'package:himu_shop/domain/repository/local_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
  }
}
