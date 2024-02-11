import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';
import 'package:virtual_movie_app/views/home_view/home_view.dart';

class CustomGradButton extends StatelessWidget {
  const CustomGradButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView(),));
      },
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              ColorsHandler.kPinkColor.withOpacity(0.3),
              ColorsHandler.kGreenColor.withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: const GradientBoxBorder(
            width: 4,
            gradient: LinearGradient(
              colors: [
                ColorsHandler.kPinkColor,
                ColorsHandler.kGreenColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        child: Center(
          child: Text("Sign up",
              style: TextStyle(fontSize: 18, color: ColorsHandler.kWhiteColor)),
        ),
      ),
    );
  }
}
