import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/options_tg/tg_options_body.dart';

class TgOptions extends StatelessWidget {
  const TgOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TgOptionsBody(),
    );
  }
}
