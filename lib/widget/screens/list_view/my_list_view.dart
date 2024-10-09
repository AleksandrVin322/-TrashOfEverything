import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_app_bar_lessons.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: const MyAppBarLessons(text: 'ListView'),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return MyTextField(text: '$index');
        },
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: Text('$index'));
        },
      ),
    ));
  }
}

class MyTextField extends StatefulWidget {
  final String text;
  const MyTextField({
    super.key,
    required this.text,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>
    with AutomaticKeepAliveClientMixin {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }

  @override
  bool get wantKeepAlive => true;
}