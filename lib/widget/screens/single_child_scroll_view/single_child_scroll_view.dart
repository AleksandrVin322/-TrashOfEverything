import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_app_bar_lessons.dart';

class MySingleChildScrollView extends StatefulWidget {
  const MySingleChildScrollView({super.key});

  @override
  State<MySingleChildScrollView> createState() =>
      _MySingleChildScrollViewState();
}

class _MySingleChildScrollViewState extends State<MySingleChildScrollView> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then(
      (value) {
        controller.animateTo(
          1000,
          duration: const Duration(seconds: 4),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (int i = 0; i < 200; i++) {
      final widget = Text('$i');
      items.add(widget);
    }
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}
