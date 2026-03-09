import 'package:base_flutter/data/model/user.dart';

abstract class UserDao {
  Future<User?> getUserById(String id);

  Future<void> insertOrUpdateUser(User user);

  Future<bool> deleteUserById(String id);
}
