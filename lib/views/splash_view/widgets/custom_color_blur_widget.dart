import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColorBlurWidget extends StatelessWidget {
  const CustomColorBlurWidget({
    super.key,
    required this.width,
    required this.color,
  });

  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 200,
          sigmaY: 200,
        ),
        child: SizedBox(
          height: width,
          width: width,
        ),
      ),
    );
  }
}
