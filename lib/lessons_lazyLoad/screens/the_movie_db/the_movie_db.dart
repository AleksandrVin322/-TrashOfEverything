import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screen/login_screen.dart';

class TheMovieDb extends StatelessWidget {
  const TheMovieDb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()))
            },
            child: const Text('LoginScreen'),
          ),
        ),
      ),
    );
  }
}
