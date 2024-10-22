import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/text_field/my_text_field_body.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTextFieldBody(),
    );
  }
}
