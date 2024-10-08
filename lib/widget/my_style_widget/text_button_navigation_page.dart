import 'package:flutter/material.dart';

class TextButtonNavigation extends StatelessWidget {
  final String text;
  final VoidCallback? func;
  const TextButtonNavigation(
      {super.key, required this.text, required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: TextButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: func,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
    );
  }
}
