import 'package:flutter/material.dart';

extension ContextShortcuts on BuildContext{
  TextTheme get txt => Theme.of(this).textTheme;

}