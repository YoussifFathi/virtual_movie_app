import 'package:flutter/material.dart';
import 'package:virtual_movie_app/models/movie_model.dart';
import 'package:virtual_movie_app/views/movie_details_view/movie_details_view.dart';
import 'package:widget_mask/widget_mask.dart';

class CustomMovieContainer extends StatelessWidget {
  const CustomMovieContainer({
    super.key,
    required this.movieModel,
    required this.mask,
  });

  final MovieModel movieModel;
  final String mask;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => MovieDetailView(movieModel: movieModel),));
      },
      child: Container(
        width: 160,
        height: 240,
        child: WidgetMask(
          blendMode: BlendMode.dstIn,
          childSaveLayer: true,
          mask: Image.asset(mask),
          child: Image.asset(
            movieModel.moviePoster,
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
