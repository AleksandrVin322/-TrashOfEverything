import 'package:flutter/material.dart';
import 'package:my_first_pet_project/main_page/main_page_body.dart';

class App extends StatelessWidget {
  /// Приложение
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainPageBody());
  }
}