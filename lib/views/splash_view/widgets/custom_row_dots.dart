import 'package:flutter/material.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';

class CustomRowDots extends StatelessWidget {
  const CustomRowDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.only(right: 8),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == 0 ? ColorsHandler.kGreenColor :ColorsHandler.kWhiteColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        );
      }),
    );
  }
}
