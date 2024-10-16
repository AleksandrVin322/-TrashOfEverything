import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/buttons/buttons_body.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ButtonsBody());
  }
}
