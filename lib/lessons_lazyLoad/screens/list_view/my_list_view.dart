import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/list_view/my_list_view_body.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyListViewBody());
  }
}
