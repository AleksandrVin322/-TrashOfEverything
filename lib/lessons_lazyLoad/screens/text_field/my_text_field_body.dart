import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_lessons.dart';

class MyTextFieldBody extends StatefulWidget {
  const MyTextFieldBody({super.key});

  @override
  State<MyTextFieldBody> createState() => _MyTextFieldBodyState();
}

class _MyTextFieldBodyState extends State<MyTextFieldBody> {
  void _onChange(String text) {
    print('$text');
  }

  void _onSubmitted(String text) {
    print('Сохраняем данные и отправляем на сервер: $text');
  }

  final controllerOne = TextEditingController(text: '981 741 52 43');
  final controllerTwo = TextEditingController(text: 'hui centrirovani');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarLessons(text: 'TextField'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.pregnant_woman_rounded),
                  prefixIcon: const Icon(Icons.abc),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 10,
                        color: Colors.red,
                      )),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.computer),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Icon input',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 224, 42, 142)),
                  helperText: 'Helper text',
                  helperStyle: const TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Send nudes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  counter: const Text('Каунтер для любого виджета'),
                  prefixIcon: const Icon(Icons.share),
                  errorText: 'pisya',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Divider(color: Colors.black),
              const Center(
                  child: Text('Дальше разбор второй и третьей части урока')),
              const SizedBox(height: 50),
              const TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: _onChange,
                onSubmitted: _onSubmitted,
                keyboardAppearance: Brightness.dark, //не робит
                textInputAction: TextInputAction.send,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLength: 13,
                inputFormatters: [PhoneInputFormatter()],
                controller: controllerOne,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  prefixText: '+7 ',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controllerTwo,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');
    final initialSpecialSymbolCount = newValue.selection
        .textBefore(newValue.text)
        .replaceAll(RegExp(r'[\d]+'), '')
        .length;
    var cursosPosition = newValue.selection.start - initialSpecialSymbolCount;
    var finalCursosPosition = cursosPosition;
    final digitsOnlyChars = digitsOnly.split('');

    if (oldValue.selection.textInside(oldValue.text) == ' ') {
      //не работает
      digitsOnlyChars.removeAt(cursosPosition - 1);
      finalCursosPosition -= 2;
    }

    var newString = <String>[];
    for (int i = 0; i < digitsOnlyChars.length; i++) {
      if (i == 3 || i == 6 || i == 8) {
        newString.add(' ');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursosPosition) finalCursosPosition++;
      } else {
        newString.add(digitsOnlyChars[i]);
      }
    }
    final resultString = newString.join();
    return TextEditingValue(
      text: resultString,
      selection: TextSelection.collapsed(offset: finalCursosPosition),
    );
  }
}
