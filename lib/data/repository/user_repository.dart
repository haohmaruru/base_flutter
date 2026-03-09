import 'package:base_flutter/data/local/database/dao/user_dao.dart';
import 'package:base_flutter/data/local/local_storage/local_storage.dart' show LocalStorage;
import 'package:base_flutter/data/model/request/login_request.dart';
import 'package:base_flutter/data/model/response/login_response.dart';
import 'package:base_flutter/data/model/user.dart';
import 'package:base_flutter/data/remote/remote_data_source/user_remote_data_source.dart';
import 'package:base_flutter/data/repository/base_repository.dart';
import 'package:base_flutter/di/di.dart';

abstract class UserRepository {
  Future<void> setUserAccessToken(String accessToken);

  Future<String?> getUserAccessToken();

  Future<LoginResponse> login(LoginRequest request);

  Future<User> loginAndGetProfile(LoginRequest request);

  Future<User?> getUserLocalById(String id);
}

class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final _storage = di.get<LocalStorage>();
  final _userRemoteDataSource = di.get<UserRemoteDataSource>();
  final _userDao = di.get<UserDao>();

  @override
  Future<void> setUserAccessToken(String accessToken) async => _storage.setUserAccessToken(accessToken);

  @override
  Future<String?> getUserAccessToken() async => _storage.getUserAccessToken();

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    return _userRemoteDataSource.login(request);
  }

  @override
  Future<User> loginAndGetProfile(LoginRequest request) async {
    final loginResponse = await _userRemoteDataSource.login(request);
    await setUserAccessToken(loginResponse.accessToken);
    final user = await _userRemoteDataSource.getProfile();
    await _userDao.insertOrUpdateUser(user);
    return user;
  }

  @override
  Future<User?> getUserLocalById(String id) async {
    return _userDao.getUserById(id);
  }
}
