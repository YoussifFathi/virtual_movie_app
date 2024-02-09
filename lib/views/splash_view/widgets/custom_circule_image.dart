import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';

class CustomCirculeImage extends StatelessWidget {
  const CustomCirculeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          image: const DecorationImage(
            alignment: Alignment.bottomLeft,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img-onboarding.png',
            ),
          ),
          border: GradientBoxBorder(
            width: 4,
            gradient: LinearGradient(
              colors: [
                ColorsHandler.kPinkColor,
                ColorsHandler.kPinkColor.withOpacity(0),
                ColorsHandler.kGreenColor.withOpacity(0.1),
                ColorsHandler.kGreenColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.2, 0.4, 0.6, 1],
            ),
          ),
        ),
      ),
    );
  }
}

