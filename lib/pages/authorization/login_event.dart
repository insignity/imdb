part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginSubmitEvent extends LoginEvent{}

class LoginResetEvent extends LoginEvent{}
