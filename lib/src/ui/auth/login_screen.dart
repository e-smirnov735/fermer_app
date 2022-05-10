import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:fermer_app/src/ui/auth/widgets/auth_form_widget.dart';
import 'package:fermer_app/src/ui/auth/widgets/auth_header_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widgets/auth_account_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/auth_bg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          //    mainAxisSize: MainAxisSize.max,
          children: const [
            SizedBox(height: 80),
            AuthHeaderWidget(),
            Spacer(),
            AuthFormWidget(),
            SizedBox(height: 20),
            AuthAccountTextWidget(),
            SizedBox(height: 79),
          ],
        ),
      ),
    );
  }
}
