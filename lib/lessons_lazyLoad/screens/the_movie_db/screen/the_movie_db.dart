import 'package:flutter/material.dart';

class TheMovieDb extends StatelessWidget {
  const TheMovieDb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 16, 154, 223),
          title: const Text('TMDB'),
          actions: [
            IconButton(
              onPressed: () =>
                  {Navigator.of(context).pushNamed('/login_screen')},
              icon: const Icon(
                Icons.login,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
