import 'package:flutter/material.dart';
import 'package:imdb/theming/app_theme.dart';
import 'package:imdb/utilities/extensions/context_shortcuts.dart';
import 'package:imdb/widgets/app_bar.dart';
import 'package:imdb/widgets/footer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      body: ListView(
        children: [
          _Header(),
          _Body(),
          Footer(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                child: Center(
                  child: Text(
                    'I',
                    style: TextStyle(fontSize: 40, color: AppColors.white),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text('data', style: context.txt.headline2! + AppColors.white),
                  Text('text', style: context.txt.headline3! + AppColors.white),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.gray.shade100,
                              shape: BoxShape.circle),
                        ),
                        CircularPercentIndicator(
                          progressColor: AppColors.gray.shade40,
                          radius: 25,
                          backgroundColor: AppColors.gray.shade80,
                          center: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '100',
                                style: context.txt.bodyText1! + AppColors.white,
                              ),
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Средний\n рейтинг фильма',
                      textAlign: TextAlign.center,
                      style: context.txt.bodyText1! + AppColors.white,
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColors.white.shade40,
                height: 90,
                width: 1,

              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.gray.shade100,
                              shape: BoxShape.circle),
                        ),
                        CircularPercentIndicator(
                          progressColor: AppColors.gray.shade40,
                          radius: 25,
                          backgroundColor: AppColors.gray.shade80,
                          center: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '100',
                                style: context.txt.bodyText1! + AppColors.white,
                              ),
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Средний\n рейтинг фильма',
                      textAlign: TextAlign.center,
                      style: context.txt.bodyText1! + AppColors.white,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
