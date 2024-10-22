import 'package:flutter/material.dart';

class MyTextFieldBody extends StatelessWidget {
  const MyTextFieldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
          ),
        ),
      ),
    );
  }
}
