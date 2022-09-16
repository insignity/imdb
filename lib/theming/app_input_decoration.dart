// ignore_for_file: avoid_classes_with_only_static_members
part of 'app_theme.dart';

class AppInputDecorationTheme {
  static final mobile = InputDecorationTheme(
    labelStyle: TextStyle(color: AppColors.gray.shade50),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.gray.shade40),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.gray.shade40),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.blue.shade80),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    hintStyle: AppTextTheme.mobile.p! + AppColors.gray.shade60,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );
}
