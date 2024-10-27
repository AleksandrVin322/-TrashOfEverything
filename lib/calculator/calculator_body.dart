import 'package:flutter/material.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({super.key});

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  String text1 = '0';
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: text1);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            text1 = (int.parse(text1) + 7).toString();
                            setState(() {});
                            print(text1);
                          },
                          child: const Text('7')),
                      TextButton(onPressed: () {}, child: const Text('4')),
                      TextButton(onPressed: () {}, child: const Text('1')),
                      TextButton(onPressed: () {}, child: const Text('0')),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('8')),
                      TextButton(onPressed: () {}, child: const Text('5')),
                      TextButton(onPressed: () {}, child: const Text('2')),
                      TextButton(onPressed: () {}, child: const Text('*')),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('9')),
                      TextButton(onPressed: () {}, child: const Text('6')),
                      TextButton(onPressed: () {}, child: const Text('3')),
                      TextButton(onPressed: () {}, child: const Text('/')),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('С')),
                      TextButton(onPressed: () {}, child: const Text('+')),
                      TextButton(onPressed: () {}, child: const Text('-')),
                      TextButton(onPressed: () {}, child: const Text('=')),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
