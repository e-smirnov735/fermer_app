import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';

class RegisterAccountTextWidget extends StatelessWidget {
  const RegisterAccountTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: 'Уже есть аккаунт?  '),
          TextSpan(
            text: 'Войти',
            style: const TextStyle(
                color: AppColors.primary, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
              },
          ),
        ],
      ),
    );
  }
}
