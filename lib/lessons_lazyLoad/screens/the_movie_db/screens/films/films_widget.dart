import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/add_images/images.dart';

class Movie {
  final Image imageName;
  final String title;
  final String time;
  final String description;

  const Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class FilmsWidget extends StatefulWidget {
  const FilmsWidget({super.key});

  @override
  State<FilmsWidget> createState() => _FilmsWidgetState();
}

class _FilmsWidgetState extends State<FilmsWidget> {
  final _movies = const [
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Clown Pidoras',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Mortal Kombat',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Горько',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Оно',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Начало',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Джентельмены',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Заклятье',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
    Movie(
      imageName: Image(image: AppImages.filmHorror),
      title: 'Крыша',
      time: 'December 19, 2022',
      description:
          'Двое детей, оставленных своими родителями справлять Хэллоуин с подругой их матери, находят в мешке с конфетами старую видеокассету. На кассете записан очень странный фильм ужасов.',
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies
          .where((Movie movie) =>
              movie.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 180,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
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
                    child: Row(
                      children: [
                        movie.imageName,
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  movie.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  movie.time,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  movie.description,
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
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white.withAlpha(235),
            ),
          ),
        )
      ],
    );
  }
}

//Image(image: AppImages.filmHorror)