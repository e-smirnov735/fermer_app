import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';

class LoginAccountTextWidget extends StatelessWidget {
  const LoginAccountTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: 'Нет аккаунта?  '),
          TextSpan(
            text: 'Зарегистрироваться',
            style: const TextStyle(
                color: AppColors.primary, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/register', (route) => false);
              },
          ),
        ],
      ),
    );
  }
}
