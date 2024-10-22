import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/main_page_the_movie_db_body.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screens/login/login_screen_body.dart';

class TheMovieDb extends StatelessWidget {
  const TheMovieDb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login_screen': (context) => const LoginScreenBody(),
        '/main_the_movie_db': (context) => const MainPageTheMovieDbBody(),
      },
      initialRoute: '/main_the_movie_db',
    );
  }
}
