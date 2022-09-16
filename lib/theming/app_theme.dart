import 'package:flutter/material.dart';
part 'app_typography.dart';
part 'app_colors.dart';
part 'app_input_decoration.dart';

class AppTheme{

  static final mobile = ThemeData(
    // errorColor: AppColors.error,
    // scaffoldBackgroundColor: AppColors.white,
    // colorScheme: ColorScheme.fromSwatch(
    //   accentColor: AppColors.green.shade90, // but now it should be declared like this
    // ),
    // progressIndicatorTheme: ProgressIndicatorThemeData(
    //   color: AppColors.green.shade90,
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: Colors.white,
    //   selectedLabelStyle: AppTextTheme.mobile.badge,
    //   unselectedLabelStyle: AppTextTheme.mobile.badge,
    //   selectedItemColor: AppColors.green.shade90,
    //   unselectedItemColor: AppColors.gray.shade50,
    // ),
    // appBarTheme: AppBarTheme(
    //   color: AppColors.green.shade90,
    //   titleTextStyle: AppTextTheme.mobile.h4,
    //   systemOverlayStyle: SystemUiOverlayStyle.light
    //       .copyWith(statusBarColor: Colors.transparent),
    //   toolbarHeight: 50,
    //   titleSpacing: 16,
    //   elevation: 0,
    //   centerTitle: true,
    // ),
    // cardTheme: CardTheme(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(borderRadius),
    //   ),
    // ),
    // dividerTheme: appDividerTheme,
    // fontFamily: AppFonts.montserrat,
    textTheme: AppTextTheme.mobile.apply(
      displayColor: AppColors.gray.shade100,
      // bodyColor: AppColors.gray.shade100,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: AppButtonStyles.primary.mobile.M,
    // ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: AppButtonStyles.secondary.mobile.M,
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: AppButtonStyles.ghost.mobile.M,
    // ),
    inputDecorationTheme: AppInputDecorationTheme.mobile,
  );
}