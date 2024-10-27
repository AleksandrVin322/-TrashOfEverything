import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screens/films/films_widget.dart';

class MainPageTheMovieDbBody extends StatefulWidget {
  const MainPageTheMovieDbBody({super.key});

  @override
  State<MainPageTheMovieDbBody> createState() => _MainPageTheMovieDbBodyState();
}

class _MainPageTheMovieDbBodyState extends State<MainPageTheMovieDbBody> {
  int _selectedPage = 0;

  void onSelect(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: onSelect,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Films',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Series',
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 16, 154, 223),
          title: const Text('TMDB'),
          actions: [
            IconButton(
              onPressed: () =>
                  {Navigator.of(context).pushReplacementNamed('/login_screen')},
              icon: const Icon(
                Icons.login,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: _selectedPage,
          children: const [
            Text('News'),
            FilmsWidget(),
            Text('Series'),
          ],
        ));
  }
}
