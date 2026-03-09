import 'package:base_flutter/data/model/converter/user_type_converter.dart';
import 'package:base_flutter/data/model/enum/user_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  String email;
  String password;

  @JsonKey(name: 'user_type')
  @UserTypeConverter()
  UserType userType;

  LoginRequest({required this.email, required this.password, required this.userType});

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password, userType: ${userType.name})';
  }
}
