import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_movie_app/views/home_view/home_view.dart';
import 'package:virtual_movie_app/views/splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const SplashView(),
    );
  }
}
