import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';

class AuthAccountTextWidget extends StatelessWidget {
  const AuthAccountTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Нет аккаунта?  '),
          TextSpan(
            text: 'Зарегистрироваться',
            style: const TextStyle(
                color: AppColors.primary, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = () => print('tappppp'),
          ),
        ],
      ),
    );
  }
}
