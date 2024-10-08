import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/screens/screen_list_page/navigation.dart';

class ScreenListPage extends StatelessWidget {
  const ScreenListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationScreenList(),
    );
  }
}
