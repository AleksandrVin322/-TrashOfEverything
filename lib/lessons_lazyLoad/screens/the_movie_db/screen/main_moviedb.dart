import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screen/login_screen.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/the_movie_db.dart';

class MainMoviedb extends StatelessWidget {
  const MainMoviedb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/the_movie_db': (context) => const TheMovieDb(),
      },
      initialRoute: '/the_movie_db',
    );
  }
}
