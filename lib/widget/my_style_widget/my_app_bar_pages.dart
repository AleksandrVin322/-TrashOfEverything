import 'package:flutter/material.dart';

class MyAppBarPages extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const MyAppBarPages({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.yellow,
      title: Text(text),
      actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.account_box)),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.bedtime)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
