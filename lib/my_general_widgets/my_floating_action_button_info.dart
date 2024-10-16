import 'package:flutter/material.dart';

class MyFloatingActionButtonInfo extends StatelessWidget {
  final String text;

  /// [FloatingActionButton] с определенным стилем и возможностью добавления текста в тело алерта.
  const MyFloatingActionButtonInfo({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => alert(context),
      backgroundColor: const Color.fromARGB(255, 255, 0, 255),
      child: const Icon(
        Icons.info,
        color: Colors.black,
      ),
    );
  }

  alert(context) => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Center(
            child: Text(
              'Greetings dear reader',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK!'))
          ],
        ),
      );
}
