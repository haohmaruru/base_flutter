import 'package:base_flutter/data/model/enum/user_type.dart';
import 'package:json_annotation/json_annotation.dart';

class UserTypeConverter implements JsonConverter<UserType, int> {
  const UserTypeConverter();

  @override
  UserType fromJson(int jsonValue) {
    return UserType.fromValue(jsonValue);
  }

  @override
  int toJson(UserType object) {
    return object.value;
  }
}
