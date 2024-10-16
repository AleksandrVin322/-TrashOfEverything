import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screen_list_lessons/screen_list_lessons.dart';

class MyAppBarLessons extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const MyAppBarLessons({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ScreenListLessons())),
            icon: const Icon(Icons.keyboard_backspace))
      ],
      backgroundColor: Colors.yellow,
      title: Text(text),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
