part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginSubmitEvent extends LoginEvent {
  final String name;
  final String password;

  LoginSubmitEvent({required this.name, required this.password});
}

class LoginResetEvent extends LoginEvent {}
