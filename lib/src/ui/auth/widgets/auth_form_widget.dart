import 'package:fermer_app/src/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AuthFormWidget extends StatefulWidget {
  const AuthFormWidget({Key? key}) : super(key: key);

  @override
  State<AuthFormWidget> createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<AuthFormWidget> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  String _errorText = '';

  void _checkAuthData(BuildContext context) {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == 'admin' && password == 'admin') {
      print('test auth');
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

  bool isOnTap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Email', prefixIcon: Icon(Icons.email_outlined)),
            cursorColor: AppColors.black,
            controller: _emailController,
            onTap: () => setState(() {
              isOnTap = !isOnTap;
            }),
          ),
          const SizedBox(height: 16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _passwordController,
            cursorColor: AppColors.black,
            decoration: const InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock_outlined),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16),
          Visibility(
              visible: true,
              child: Text(
                _errorText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              )),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 15),
              ),
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
            ),
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
