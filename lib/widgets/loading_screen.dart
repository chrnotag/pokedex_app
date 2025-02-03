import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(2.seconds, () => Modular.to.navigate(NavigationRoutes.registerSuccessful),);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorsLight.blueBackground,
      body: Center(
          child: Image.asset(Images.imagesCircularProgressCustom)
              .animate(
                onComplete: (controller) => controller.repeat(),
              )
              .rotate(
                  begin: 0, end: 1, duration: 1.seconds, curve: Curves.linear)),
    );
  }
}
