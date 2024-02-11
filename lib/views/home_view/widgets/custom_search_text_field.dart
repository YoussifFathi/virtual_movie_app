import 'package:flutter/material.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
            fontSize: 18, color: ColorsHandler.kWhiteColor.withOpacity(0.6)),
        suffixIcon: Icon(
          Icons.mic,
          size: 24,

          color: ColorsHandler.kWhiteColor.withOpacity(0.6),
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 24,
          color: ColorsHandler.kWhiteColor.withOpacity(0.6),
        ),
        fillColor: ColorsHandler.kGreyColor.withOpacity(0.12),
        filled: true,
        contentPadding: EdgeInsets.zero,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
