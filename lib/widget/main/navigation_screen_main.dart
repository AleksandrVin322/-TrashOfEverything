import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/my_style_widget/text_button_navigation_page.dart';
import 'package:my_first_pet_project/widget/screens/screen_list_page/screen_list_page.dart';

class NavigationScreenMain extends StatelessWidget {
  const NavigationScreenMain({super.key});

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
                  builder: (context) => const ScreenListPage()))
            },
          ),
          TextButtonNavigation(
            text: 'Виджеты',
            func: () => {},
          ),
          TextButtonNavigation(
            text: 'Мои красивые странички и мини приложения',
            func: () => {},
          ),
          TextButtonNavigation(
            text: 'Еще не придумал',
            func: () => {},
          ),
        ],
      ),
    );
  }
}
