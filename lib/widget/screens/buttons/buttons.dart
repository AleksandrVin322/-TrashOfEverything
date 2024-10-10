import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_app_bar_lessons.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_floating_action_button_info.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int count = 0;
  final String textAlert = '''
Изучение стандартных кнопок MaterialApp.
''';

  void onLongPress() {
    print('I love you <3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBarLessons(text: 'Buttons'),
        floatingActionButton: MyFloatingActionButtonInfo(text: textAlert),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Счетчик нажатий: $count'),
              ElevatedButton(
                onLongPress: onLongPress,
                onPressed: () => null,
                child: const Text('pizda'),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.green),
                  foregroundColor: const WidgetStatePropertyAll(Colors.black),
                  overlayColor: const WidgetStatePropertyAll(Colors.amber),
                  shadowColor: const WidgetStatePropertyAll(Colors.blue),
                  elevation: const WidgetStatePropertyAll(10),
                  padding: const WidgetStatePropertyAll(EdgeInsets.all(10)),
                  minimumSize: const WidgetStatePropertyAll(Size(100, 200)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  //visualDensity: VisualDensity(horizontal: 5, vertical: 3),
                ),
                onPressed: () => null,
                child: const Text('vagina'),
              ),
              TextButton(
                onPressed: () => null,
                child: const Text('jopa'),
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count++;
                    },
                  );
                },
                icon: const Icon(Icons.plus_one),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
