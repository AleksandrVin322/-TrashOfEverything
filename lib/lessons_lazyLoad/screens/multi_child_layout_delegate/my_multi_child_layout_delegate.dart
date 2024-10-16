import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/multi_child_layout_delegate/my_multi_child_layout_delegate_body.dart';

///Отработка навыка работы с [MultiChildLayoutDelegate].
class MyMultiChildLayoutDelegate extends StatelessWidget {
  const MyMultiChildLayoutDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyMultiChildLayoutDelegateBody());
  }
}
