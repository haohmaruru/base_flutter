import 'package:base_flutter/data/model/request/login_request.dart';
import 'package:base_flutter/data/model/response/login_response.dart';
import 'package:base_flutter/data/model/user.dart';
import 'package:base_flutter/data/remote/api_constants.dart';
import 'package:base_flutter/data/remote/remote_data_source/base_remote_data_source.dart';

class UserRemoteDataSource extends BaseRemoteDataSource {
  Future<LoginResponse> login(LoginRequest request) async {
    final result = await post(ApiConstants.loginPath, data: request.toJson());
    return LoginResponse.fromJson(result.data);
  }

  Future<User> getProfile() async {
    final result = await get(ApiConstants.profilePath);
    return User.fromJson(result.data);
  }
}
