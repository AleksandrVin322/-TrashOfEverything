import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/screens/screen_list_page/screen_list_page.dart';

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
                builder: (context) => const ScreenListPage())),
            icon: const Icon(Icons.keyboard_backspace))
      ],
      backgroundColor: Colors.yellow,
      title: Text(text),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
