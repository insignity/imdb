import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb/services/api.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginEmptyState()) {
    on<LoginSubmitEvent>((event, emit) async {
      emit(LoginLoadingState());

      final result = await Api().getToken();
      emit(LoginLoadedState());
    });
  }
}
