import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.label), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.label), onPressed: () {}),
            IconButton(icon: Icon(Icons.label), onPressed: () {}),
          ],
          title: Text('appbar'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            Text('Войти в свою учётную запись'),
            Text(
                'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой.'),
            Text(
                'Если Вы зарегистрировались, но не получили письмо для подтверждения, здесь, чтобы отправить письмо повторно.'),
            SizedBox(height: 32),
            Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Логин'),
                SizedBox(height: 8),
                TextFormField(),
                SizedBox(height: 16),
                Text('Пароль'),
                TextFormField(),
                Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Войти')),
                    TextButton(onPressed: () {}, child: Text('Сбросить пароль'))
                  ],
                ),
              ],
            )),
            Footer(),
          ],
        ));
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Вступить в сообщество')),
        SizedBox(height: 20),
        
        TextButton(child: Text('Главное'), onPressed: () {}),
        TextButton(child: Text('o TMDB'), onPressed: () {}),
        TextButton(child: Text('Связаться с нами'), onPressed: () {}),
        TextButton(child: Text('Форумы поддержки'), onPressed: () {}),

        TextButton(child: Text('API'), onPressed: () {}),
        TextButton(child: Text('Статус системы'), onPressed: () {}),
        TextButton(child: Text('Учавствуйте'), onPressed: () {}),
        TextButton(child: Text('Писание об участии'), onPressed: () {}),
        TextButton(child: Text('Добавить новый фильм'), onPressed: () {}),
        TextButton(child: Text('Добавить новый сериал'), onPressed: () {}),
        TextButton(child: Text('Сообщество'), onPressed: () {}),
        TextButton(child: Text('Руководство'), onPressed: () {}),
        TextButton(child: Text('Обсуждение'), onPressed: () {}),
        TextButton(child: Text('Доска почета'), onPressed: () {}),
        TextButton(child: Text('Twitter'), onPressed: () {}),
        TextButton(child: Text('О праве'), onPressed: () {}),
        TextButton(child: Text('Условие пользования'), onPressed: () {}),
        TextButton(child: Text('API правила позльзования'), onPressed: () {}),
        TextButton(
            child: Text('Политика конвиденциальности'), onPressed: () {}),
      ],
    );
  }
}
