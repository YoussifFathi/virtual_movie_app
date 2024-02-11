import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:virtual_movie_app/core/colors_handler.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/custom_circule_image.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/custom_color_blur_widget.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/custom_grad_button.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/custom_row_dots.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
              color: ColorsHandler.kPinkColor,
            ),
          ),
          Positioned(
            top: size.height * .3,
            right: -100,
            child: const CustomColorBlurWidget(
              width: 200,
              color: ColorsHandler.kGreenColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomCirculeImage(),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Watch Movies in Virtual Reality",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      color: ColorsHandler.kWhiteColor.withOpacity(.8),
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  child: Text(
                    "Download and Watch offline where ever you are ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsHandler.kGreyColor.withOpacity(.8),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomGradButton(),
                const SizedBox(
                  height: 40,
                ),
                const CustomRowDots()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
