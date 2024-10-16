import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screens/login/header_login.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: const [
          HeaderLogin(),
        ],
      ),
    );
  }
}
