import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:fermer_app/src/core/styles/app_input_decorations.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    inputDecorationTheme: AppInputDecorations.inputDecoration,
    hintColor: AppColors.grey,
  );
}
