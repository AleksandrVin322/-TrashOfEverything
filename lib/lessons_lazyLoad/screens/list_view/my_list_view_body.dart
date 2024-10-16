import 'package:flutter/material.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_lessons.dart';
import 'package:my_first_pet_project/my_general_widgets/my_floating_action_button_info.dart';

class MyListViewBody extends StatelessWidget {
  final String textAlert = '''
Здесь разобран виджет ListView и его конструкторы.
Конечный вариант разбора это конструктор separated.
На странице скролящийся список из циферок и TextField.
Благодаря использованию миксина AutomaticKeepAliveClientMixin реализовали сохранение данных в текст филдах при скролле.
Без этой фичи, после скролла данные удаляются и виджет отрисовывается заново.
''';
  const MyListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButtonInfo(text: textAlert),
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
    );
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
