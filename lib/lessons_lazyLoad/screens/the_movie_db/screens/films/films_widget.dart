import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/add_images/images.dart';

class FilmsWidget extends StatelessWidget {
  const FilmsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 180,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Row(
                  children: [
                    Image(image: AppImages.filmHorror),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Horror',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'December 19, 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      print('zalupa');
                    },
                  ))
            ],
          ),
        );
      },
    );
  }
}

//Image(image: AppImages.filmHorror)