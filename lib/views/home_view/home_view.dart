import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:virtual_movie_app/core/colors_handler.dart';
import 'package:virtual_movie_app/views/home_view/widgets/custom_floating_action_button.dart';
import 'package:virtual_movie_app/views/home_view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomeBottomNavBar(),
      floatingActionButton: CustomFloatingActionButton(),
      backgroundColor: ColorsHandler.kBlackColor,
      body: HomeViewBody(),
    );
  }
}

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return GlassmorphicContainer(
      width: size.width,
      height: 80,
      borderRadius: 0,
      linearGradient:   LinearGradient(
        colors: [
          ColorsHandler.kWhiteColor.withOpacity(0.1),
          ColorsHandler.kWhiteColor.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      border: 0,
      blur: 30,
      borderGradient:const  LinearGradient(
        colors: [
          ColorsHandler.kPinkColor,
          ColorsHandler.kGreenColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      child: const  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home,color: Colors.white,size: 28,),
          Icon(Icons.tv,color: Colors.white,size: 28,),
          SizedBox(height: 60,),
          Icon(Icons.favorite_border,color: Colors.white,size: 28,),
          Icon(Icons.download_for_offline_outlined,color: Colors.white,size: 28,),
        ],
      ),
    );

  }
}
