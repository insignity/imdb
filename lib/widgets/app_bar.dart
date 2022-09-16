import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imdb/theming/app_theme.dart';

class CustomAppBar extends StatelessWidget {
  final Widget body;

  const CustomAppBar({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawer(),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  color: AppColors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              actions: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/person.svg',
                    color: AppColors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/search.svg'),
                  onPressed: () {},
                ),
              ],
              backgroundColor: AppColors.darkBlue,
              floating: true,
              snap: true,
              collapsedHeight: 64,
              title: SvgPicture.asset('assets/images/logo.svg', height: 40),
              centerTitle: true,
            ),
          ],
          body: body,
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
