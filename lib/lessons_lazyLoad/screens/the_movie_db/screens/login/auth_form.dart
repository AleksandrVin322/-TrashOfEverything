import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _loginTextContoller = TextEditingController();
  final _passwordTextContoller = TextEditingController();
  String? errorText;

  void _login() {
    final login = _loginTextContoller.text;
    final password = _passwordTextContoller.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      print('open app');
    } else {
      errorText = 'Неправильный логин или пароль';
      print('error');
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Reset password');
  }

  final textStyle = const TextStyle(
    fontSize: 16,
    color: Color(0xFF212529),
  );
  final border = const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.all(10),
    isCollapsed: true,
  );
  final colorButtons = const Color(0xFF01B4E4);
  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
        ],
        Text(
          'Login',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _loginTextContoller,
          decoration: border,
        ),
        const SizedBox(height: 15),
        Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordTextContoller,
          decoration: border,
          obscureText: true,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(colorButtons),
                foregroundColor: const WidgetStatePropertyAll(Colors.white),
                textStyle: const WidgetStatePropertyAll(
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              ),
              onPressed: _login,
              child: const Text('Login'),
            ),
            const SizedBox(width: 30),
            TextButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                foregroundColor: WidgetStatePropertyAll(colorButtons),
                textStyle: const WidgetStatePropertyAll(
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onPressed: _resetPassword,
              child: const Text('Reset password'),
            ),
          ],
        )
      ],
    );
  }
}
