import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppInputDecorations {
  static final inputDecoration = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
  );
}
