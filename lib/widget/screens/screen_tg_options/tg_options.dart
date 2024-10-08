import 'package:flutter/material.dart';
import 'package:my_first_pet_project/widget/screens/screen_tg_options/user_profile.dart';

class TgOptions extends StatelessWidget {
  const TgOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserProfile(),
    );
  }
}
