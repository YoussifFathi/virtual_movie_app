import 'package:flutter/material.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';
import 'package:virtual_movie_app/views/splash_view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsHandler.kBlackColor,
      body: SplashViewBody(),
    );
  }
}
