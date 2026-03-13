import 'package:base_flutter/data/repository/user_repository.dart';
import 'package:base_flutter/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  final _userRepository = di.get<UserRepository>();

  login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      // final result = await _userRepository.loginAndGetProfile(LoginRequest(email: email, password: password));
      emit(LoginSuccessState());
    } catch (e) {
      debugPrint(e.toString());
      emit(LoginFailedState(e.toString()));
    }
  }
}
