import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static final authHeader = GoogleFonts.dmSans(
      fontSize: 30, color: AppColors.white, fontWeight: FontWeight.w700);
  static final authTitle = GoogleFonts.dmSans(
      fontSize: 14, color: AppColors.white, fontWeight: FontWeight.w700);
}
