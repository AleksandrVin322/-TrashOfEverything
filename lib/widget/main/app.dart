import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/main/app_scaffold.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: AppScaffold());
  }

  
}
