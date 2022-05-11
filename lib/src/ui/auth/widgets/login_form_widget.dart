import 'package:fermer_app/src/core/styles/app_button_styles.dart';
import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  String _errorText = '';
  bool _isObscure = true;

  void showObscureText() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _checkAuthData(BuildContext context) {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == 'admin' && password == 'admin') {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      setState(() {
        _errorText = 'Не правильно введены почта или пароль';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          SizedBox(
            height: 60,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              controller: _passwordController,
              cursorColor: AppColors.black,
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: 'Пароль',
                prefixIcon: const Icon(
                  Icons.lock_outlined,
                  size: 24,
                ),
                suffixIcon: IconButton(
                  onPressed: () => showObscureText(),
                  icon: Icon(
                    _isObscure
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye_sharp,
                    color: AppColors.grey,
                    size: 24,
                  ),
                ),
              ),
              obscureText: _isObscure,
            ),
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
              _checkAuthData(context);
            },
            child: const Text('Войти'),
          ),
        ],
      ),
    );
  }
}
