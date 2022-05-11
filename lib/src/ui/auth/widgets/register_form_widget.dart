import 'package:fermer_app/src/core/styles/app_button_styles.dart';
import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _repeatPasswordController;
  String _errorText = '';

  bool _checkAuthData(BuildContext context) {
    final password = _passwordController.text;
    final repeatPassord = _repeatPasswordController.text;

    if (password == repeatPassord) {
      return true;
    } else {
      setState(() {
        _errorText = 'пароли не совпадают';
      });
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _repeatPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: const InputDecoration(
              isCollapsed: true,
              hintText: 'Почта',
              prefixIcon: Icon(Icons.email_outlined),
            ),
            textAlignVertical: TextAlignVertical.center,
            cursorColor: AppColors.black,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            cursorColor: AppColors.black,
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
              isCollapsed: true,
              hintText: 'Пароль',
              prefixIcon: Icon(Icons.lock_outlined),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _repeatPasswordController,
            cursorColor: AppColors.black,
            decoration: const InputDecoration(
              isCollapsed: true,
              hintText: 'Пароль повторно',
              prefixIcon: Icon(Icons.lock_outlined),
            ),
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
          ),
          const SizedBox(height: 16),
          Visibility(
              visible: true,
              child: Text(
                _errorText,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red),
              )),
          ElevatedButton(
            style: AppButtonStyle.inputStyle,
            onPressed: () {
              //TODO реализовать проверку авторизации
              _checkAuthData(context);
            },
            child: const Text('Войти'),
          ),
        ],
      ),
    );
  }
}
