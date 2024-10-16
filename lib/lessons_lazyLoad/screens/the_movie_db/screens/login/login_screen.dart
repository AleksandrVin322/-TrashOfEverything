import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screens/login/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreenBody());
  }
}
