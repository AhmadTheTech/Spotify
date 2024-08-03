import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:spotify_app/screens/RegisterOrLogin/loinOrsignup.dart';

import '../../bottomnav.dart';

class UserChecking
{
  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance ;
    final user = auth.currentUser ;
    if (user != null){
      Timer(const Duration(seconds: 0), () => Get.to(const BottomTabs() , duration: const Duration(seconds: 2) , transition: Transition.circularReveal));
    }
   else{
      Timer(const Duration(seconds: 0), () => Get.to(const LoginOrSignUpScreen() , duration: const Duration(seconds: 2) , transition: Transition.circularReveal));

    }
  }
}