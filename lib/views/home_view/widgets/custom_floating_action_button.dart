import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsHandler.kBlackColor,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: ColorsHandler.kBlackColor.withOpacity(0.1),width: 2)
        ),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                colors: [
                  ColorsHandler.kPinkColor.withOpacity(0.4),

                  ColorsHandler.kGreenColor.withOpacity(0.4),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: GradientBoxBorder(

            width: 4,
            gradient: LinearGradient(
              colors: [
                ColorsHandler.kPinkColor,
                ColorsHandler.kGreenColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          )),
          child: Center(child: Icon(Icons.add,color: Colors.white,size: 45,)),
        ),
      ),
    );
  }
}
