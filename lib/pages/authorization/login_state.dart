part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginEmptyState extends LoginState {}

class LoginLoadingState extends LoginState{}

class LoginLoadedState extends LoginState{}
