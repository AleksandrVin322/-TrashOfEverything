import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/custom_paint/my_custom_paint_body.dart';

class MyCustomPaint extends StatelessWidget {
  const MyCustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyCustomPaintBody());
  }
}
