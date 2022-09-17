import 'package:flutter/material.dart';
import 'package:imdb/pages/authorization/login_page.dart';
import 'package:imdb/pages/profile/profile_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: ProfilePage),
  ],
)

class AppRouter extends _$AppRouter{}