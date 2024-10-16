import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screen_list_lessons/list_lessons_body.dart';

class ScreenListLessons extends StatelessWidget {
  const ScreenListLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListLessonsBody(),
    );
  }
}
