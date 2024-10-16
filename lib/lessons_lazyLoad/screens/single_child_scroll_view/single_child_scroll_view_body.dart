import 'package:flutter/material.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_lessons.dart';

class SingleChildScrollViewBody extends StatelessWidget {
  final ScrollController controller;
  final List<Widget> items;

  const SingleChildScrollViewBody(
      {super.key, required this.controller, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarLessons(text: 'SingleChildScrollView'),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items,
          ),
        ),
      ),
    );
  }
}
