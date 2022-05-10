import 'package:fermer_app/src/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Фермерская лавка',
          style: AppTextStyles.authHeader,
        ),
        const SizedBox(height: 10),
        Text(
          'Продукты напрямую от фермеров',
          style: AppTextStyles.authTitle,
        ),
      ],
    );
  }
}
