import 'package:flutter/material.dart';
import 'package:virtual_movie_app/models/movie_model.dart';
import 'package:virtual_movie_app/views/home_view/widgets/custom_movie_container.dart';

class CustomMoviesListView extends StatelessWidget {
  const CustomMoviesListView({
    super.key, required this.movies,
  });
  final List<MovieModel> movies;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          String mask = 'assets/mask/mask.png';
          if (index == 0){
            mask = 'assets/mask/mask_firstIndex.png';
          }else if (index == newMovies.length - 1){
            mask = 'assets/mask/mask_lastIndex.png';
          }
          return CustomMovieContainer(
            movieModel: movies[index],
            mask: mask,
          );
        },
      ),
    );
  }
}
