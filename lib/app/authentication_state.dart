import 'package:equatable/equatable.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class UnAuthenticationState extends AuthenticationState {}

final class AuthenticatedState extends AuthenticationState {}
