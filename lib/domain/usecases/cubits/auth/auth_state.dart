part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => <Object>[];
}

class AuthInitial extends AuthState {}

class AuthInProgress extends AuthState {}

class AuthFailure extends AuthState {}

class AuthSuccess extends AuthState {}
