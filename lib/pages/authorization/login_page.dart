import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb/routing/app_router.dart';
import 'package:imdb/theming/app_theme.dart';
import 'package:imdb/utilities/extensions/context_shortcuts.dart';
import 'package:imdb/widgets/app_bar.dart';
import 'package:imdb/widgets/footer.dart';

import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: CustomAppBar(
          body: ListView(
        children: [
          _Header(),
          Footer(),
        ],
      )),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginBloc _loginBloc = BlocProvider.of<LoginBloc>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text('Войти в свою учётную запись', style: context.txt.headline2),
          const SizedBox(height: 12),
          RichText(
            text: TextSpan(style: context.txt.bodyText1, children: [
              TextSpan(
                  text:
                      'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой.'),
              TextSpan(
                  text: ' Нажмите здесь',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
              TextSpan(text: ', чтобы начать.')
            ]),
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(style: context.txt.bodyText1, children: [
              TextSpan(
                text:
                    'Если Вы зарегистрировались, но не получили письмо для подтверждения, здесь, чтобы отправить письмо повторно.',
              ),
              TextSpan(
                  text: ' нажмите здесь',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
              TextSpan(text: ', чтобы отправить письмо повторно.')
            ]),
          ),
          const SizedBox(height: 32),
          BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            if (state is LoginEmptyState)
              return Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Имя пользователя', style: context.txt.bodyText1),
                  SizedBox(height: 8),
                  TextFormField(),
                  SizedBox(height: 16),
                  Text('Пароль', style: context.txt.bodyText1),
                  TextFormField(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _loginBloc.add(LoginSubmitEvent());
                          },
                          child: Text('Войти')),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {}, child: Text('Сбросить пароль'))
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ));
            if (state is LoginLoadingState)
              return Center(
                child: CircularProgressIndicator(),
              );
            if (state is LoginLoadedState) context.router.push(ProfileRoute());

            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
