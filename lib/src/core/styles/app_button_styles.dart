import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppButtonStyle {
  static final inputStyle = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(vertical: 14),
    ),
    backgroundColor: MaterialStateProperty.all(AppColors.primary),
  );
}
