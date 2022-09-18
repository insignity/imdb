import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:imdb/services/api/api.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginEmptyState()) {
    on<LoginSubmitEvent>((event, emit) async {
      emit(LoginLoadingState());

      final result = await GetIt.I<Api>().getToken();
      emit(LoginLoadedState());
    });
  }
}
