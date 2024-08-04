import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:spotify_app/screens/get_started.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      disableNavigation: true,
      splash: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/splash_logo.png')),
        ],
      ),
      nextScreen: const GetStartedScreen(),
      splashTransition: SplashTransition.sizeTransition,
      duration: 4500,
    );
  }
}
