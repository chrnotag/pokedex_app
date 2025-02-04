import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{
  TextTheme get textTheme => Theme.of(this).textTheme;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
}