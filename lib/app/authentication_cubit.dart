import 'package:base_flutter/app/authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(UnAuthenticationState());

  setAuthenticationState(AuthenticationState state) {
    emit(state);
  }
}
