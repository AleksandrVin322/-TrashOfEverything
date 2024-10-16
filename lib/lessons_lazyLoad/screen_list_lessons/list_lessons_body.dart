import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/buttons/buttons.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/list_view/my_list_view.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/multi_child_layout_delegate/my_multi_child_layout_delegate.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/options_tg/tg_options.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/single_child_scroll_view/single_child_scroll_view.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/main_page_the_movie_db.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_pages.dart';
import 'package:my_first_pet_project/my_general_widgets/text_button_navigation_page.dart';

class ListLessonsBody extends StatelessWidget {
  /// Тело со списком уроков LazyLoad.
  const ListLessonsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarPages(text: 'Choose, bro!'),
      body: Container(
        color: const Color.fromARGB(255, 191, 143, 199),
        child: ListView(
          children: [
            TextButtonNavigation(
              text: 'Верстка страницы опции телеграмм',
              func: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TgOptions(),
                  ),
                )
              },
            ),
            TextButtonNavigation(
              text: 'Игра с MultiChildLayoutDelegate',
              func: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyMultiChildLayoutDelegate(),
                ),
              ),
            ),
            TextButtonNavigation(
              text: 'SingleChildScrollView',
              func: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MySingleChildScrollView(),
                ),
              ),
            ),
            TextButtonNavigation(
              text: 'ListView',
              func: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyListView(),
                ),
              ),
            ),
            TextButtonNavigation(
              text: 'Buttons',
              func: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Buttons(),
                ),
              ),
            ),
            TextButtonNavigation(
              text: 'TheMovieDB',
              func: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TheMovieDb(),
                ),
              ),
            ),
            TextButtonNavigation(
              text: 'Lesson 7 (NIHUYA)',
              func: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
