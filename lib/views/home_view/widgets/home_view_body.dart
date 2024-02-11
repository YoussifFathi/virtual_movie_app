import 'package:flutter/material.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';
import 'package:virtual_movie_app/models/movie_model.dart';
import 'package:virtual_movie_app/views/home_view/widgets/custom_movie_container.dart';
import 'package:virtual_movie_app/views/home_view/widgets/custom_movies_list_view.dart';
import 'package:virtual_movie_app/views/home_view/widgets/custom_search_text_field.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/custom_color_blur_widget.dart';
import 'package:widget_mask/widget_mask.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: size.height * .1,
            left: -88,
            child: const CustomColorBlurWidget(
              width: 166,
              color: ColorsHandler.kGreenColor,
            ),
          ),
          Positioned(
            top: size.height * .4,
            right: -88,
            child: const CustomColorBlurWidget(
              width: 166,
              color: ColorsHandler.kPinkColor,
            ),
          ),
          const Positioned(
            bottom: 0,
            left: -90,
            child: CustomColorBlurWidget(
              width: 180,
              color: ColorsHandler.kGreenColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                      child: Text(
                        "What Would you like to watch",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            color: ColorsHandler.kWhiteColor.withOpacity(.8),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomSearchTextField(),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "New Movies",
                      style: TextStyle(
                          fontSize: 18,
                          color: ColorsHandler.kWhiteColor.withOpacity(.8),
                          fontWeight: FontWeight.w600),
                    ),
                    CustomMoviesListView(movies: newMovies),
                    Text(
                      "Upcoming Movies",
                      style: TextStyle(
                          fontSize: 18,
                          color: ColorsHandler.kWhiteColor.withOpacity(.8),
                          fontWeight: FontWeight.w600),
                    ),
                    CustomMoviesListView(movies: upcomingMovies),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


