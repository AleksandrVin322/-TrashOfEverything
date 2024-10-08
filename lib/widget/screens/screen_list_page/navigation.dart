import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_app_bar_pages.dart';
import 'package:my_first_pet_project/widget/my_style_widget/text_button_navigation_page.dart';
import 'package:my_first_pet_project/widget/screens/screen_test.dart/my_multi_child_layout_delegate.dart';
import 'package:my_first_pet_project/widget/screens/screen_tg_options/tg_options.dart';

class NavigationScreenList extends StatelessWidget {
  const NavigationScreenList({super.key});

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
              text: 'Lesson 3 (NIHUYA)',
              func: () => {},
            ),
            TextButtonNavigation(
              text: 'Lesson 4 (NIHUYA)',
              func: () => {},
            ),
            TextButtonNavigation(
              text: 'Lesson 5 (NIHUYA)',
              func: () => {},
            ),
            TextButtonNavigation(
              text: 'Lesson 6 (NIHUYA)',
              func: () => {},
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