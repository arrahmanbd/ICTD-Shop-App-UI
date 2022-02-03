import 'package:himu_shop/domain/model/user.dart';

abstract class LocalRepositoryInterface {
  Future<String?> getToken();
  Future<void> clearAllData();
  Future<void> saveToken(String? token);
  Future<User?> saveUser(User? user);
  Future<User> getUser();
}
