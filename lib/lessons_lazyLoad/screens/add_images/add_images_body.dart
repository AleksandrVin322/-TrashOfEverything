import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/add_images/images.dart';

class AddImagesBody extends StatelessWidget {
  const AddImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AppImages.house),
      ),
    );
  }
}
