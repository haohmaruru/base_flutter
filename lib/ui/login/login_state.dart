import 'package:equatable/equatable.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitialState extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginSuccessState extends LoginState {}

final class LoginFailedState extends LoginState {
  final String errorMessage;

  const LoginFailedState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
