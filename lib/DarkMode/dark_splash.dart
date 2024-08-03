import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:spotify_app/DarkMode/dark_get_started.dart';

class DarkSplashScreen extends StatelessWidget {
  const DarkSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/splash_logo.png')),
        ],
      ),
      nextScreen: const DarkGetStartedScreen(),
      splashTransition: SplashTransition.sizeTransition,
      duration: 5000,
      backgroundColor: Colors.black,
    );
  }
}
