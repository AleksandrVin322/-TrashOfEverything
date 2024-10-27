import 'package:flutter/material.dart';
import 'package:my_first_pet_project/calculator/calculator_body.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CalculatorBody());
  }
}
