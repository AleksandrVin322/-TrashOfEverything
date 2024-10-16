import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screen_list_lessons/screen_list_lessons.dart';
import 'package:my_first_pet_project/my_general_widgets/text_button_navigation_page.dart';

class MainPageListApps extends StatelessWidget {
  /// Список мини приложений.
  const MainPageListApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 191, 143, 199),
      child: ListView(
        children: [
          TextButtonNavigation(
            text: 'Разные примеры/задания из уроков LazyLoad Dart & Flutter',
            func: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ScreenListLessons()))
            },
          ),
        ],
      ),
    );
  }
}
