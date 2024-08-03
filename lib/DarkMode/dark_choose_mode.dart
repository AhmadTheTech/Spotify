import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/DarkMode/dark_splash.dart';
import 'package:spotify_app/DarkMode/darkloginOrsignup.dart';
import 'package:spotify_app/screens/splash.dart';

class DarkChooseModePage extends StatefulWidget {
  const DarkChooseModePage({super.key});

  @override
  State<DarkChooseModePage> createState() => _DarkChooseModePageState();
}

class _DarkChooseModePageState extends State<DarkChooseModePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background_2.png') , fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(image: AssetImage('assets/images/logo-2.png')),
              const Spacer(),
              Text("Choose mode" , style: GoogleFonts.roboto(fontSize: 27 , fontWeight: FontWeight.bold,color: const Color(0xffDADADA)),),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 500),
                              pageBuilder: (context, animation, secondaryAnimation) => const DarkSplashScreen(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color(0xff30393c),
                              borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: const Color(0xff42C83C)
                            ),
                          ),
                          child: Center(child: SvgPicture.asset('assets/icons/Moon.svg')),
                        ),
                      ),
                      Text("Dark Mode" , style: GoogleFonts.roboto(color: const Color(0xffDADADA) , fontSize: 17),)
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 500),
                              pageBuilder: (context, animation, secondaryAnimation) => const SplashScreen(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color(0xff30393c),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(child: SvgPicture.asset('assets/icons/Sun 1.svg')),
                        ),
                      ),
                      Text("Light Mode" , style: GoogleFonts.roboto(color: const Color(0xffDADADA) , fontSize: 17),)
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) => const DarkLoginOrSignUpScreen(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 72,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff42C83C),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(child: Text("Get Started" , style: GoogleFonts.roboto(fontSize: 22 , color: Colors.white , fontWeight: FontWeight.bold),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


