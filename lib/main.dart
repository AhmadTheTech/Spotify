import 'dart:async';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_app/firebase_options.dart';
import 'package:spotify_app/screens/get_started.dart';
import 'package:spotify_app/screens/splash.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const Spotify());
}

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), _navigateToHome);

  }

  void _navigateToHome() {
    Get.to(() => const GetStartedScreen());
  }
  @override
  Widget build(BuildContext context) {
    return const  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
