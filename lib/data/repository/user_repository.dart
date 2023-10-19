import 'package:base/data/api/model/user.dart';
import 'package:base/data/repository/base_repository.dart';
import 'package:base/data/storage/local_storage.dart';
import 'package:get/get.dart';

class UserRepository extends BaseRepository {
  final _storage = Get.find<LocalStorage>();

  Future<void> setUserAccessToken(String accessToken) async =>
      _storage.setUserAccessToken(accessToken);
  Future<String?> getUserAccessToken() async => _storage.getUserAccessToken();
  Future<void> setUserInfo(User user) async => _storage.setUserInfo(user);
  Future<User?> getUserInfo() async => _storage.getUserInfo();
}
