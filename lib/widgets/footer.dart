import 'package:flutter/material.dart';
import 'package:imdb/theming/app_theme.dart';
import 'package:imdb/utilities/extensions/context_shortcuts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: AppColors.darkBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: InkWell(
              child: Text('Вступить в сообщество'),
            ),
          ),
          SizedBox(height: 20),

          _TitleAndSources(
            title: 'ГЛАВНОЕ',
            sources: [
              InkWell(
                child: Text('o TMDB', style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Связаться с нами',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Форумы поддержки',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('API', style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Статус системы',
                    style: context.txt.a! + AppColors.white),
              ),
            ],
          ),
          _TitleAndSources(
            title: 'УЧАВСТВУЙТЕ',
            sources: [
              InkWell(
                child: Text('Писание об участии',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Добавить новый фильм',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Добавить новый сериал',
                    style: context.txt.a! + AppColors.white),
              ),
            ],
          ),
          _TitleAndSources(
            title: 'СООБЩЕСТВО',
            sources: [
              InkWell(
                child: Text('Руководство',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child:
                    Text('Обсуждение', style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Доска почета',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Twitter', style: context.txt.a! + AppColors.white),
              ),
            ],
          ),
          _TitleAndSources(
            title: 'О ПРАВЕ',
            sources: [
              InkWell(
                child: Text('Условие пользования',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('API правила позльзования',
                    style: context.txt.a! + AppColors.white),
              ),
              InkWell(
                child: Text('Политика конвиденциальности',
                    style: context.txt.a! + AppColors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleAndSources extends StatelessWidget {
  final String title;
  final List<Widget> sources;

  const _TitleAndSources({
    Key? key,
    required this.title,
    required this.sources,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Text(title, style: context.txt.h3! + AppColors.white),
        ),
        for (final widget in sources)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: widget,
          ),
      ],
    );
  }
}
