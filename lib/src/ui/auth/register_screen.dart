import 'widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/register_account_text_widget.dart';
import 'widgets/register_form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/auth_bg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            //    mainAxisSize: MainAxisSize.max,
            children: const [
              SizedBox(height: 80),
              AuthHeaderWidget(),
              SizedBox(
                height: 120,
              ),
              // Spacer(),
              RegisterFormWidget(),
              SizedBox(height: 20),
              RegisterAccountTextWidget(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
