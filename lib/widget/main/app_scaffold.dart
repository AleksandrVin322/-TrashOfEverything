import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/main/navigation_screen_main.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_app_bar_pages.dart';
import 'package:my_first_pet_project/widget/my_style_widget/my_floating_action_button_info.dart';

class AppScaffold extends StatelessWidget {
  final String textAlert = '''
This application was created so that I could learn flutter step by step and be able to save progress or some individual features in the application for repetition, analysis, and refactoring. 
Enjoy using it!
  ''';
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MyFloatingActionButtonInfo(text: textAlert),
        appBar: const MyAppBarPages(text: 'Choose, bro!'),
        body: const NavigationScreenMain());
  }
}
