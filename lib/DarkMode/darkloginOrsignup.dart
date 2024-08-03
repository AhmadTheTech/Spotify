// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/DarkMode/dark_register.dart';
import 'package:spotify_app/DarkMode/dark_signin.dart';

class DarkLoginOrSignUpScreen extends StatefulWidget {
  const DarkLoginOrSignUpScreen({super.key});

  @override
  State<DarkLoginOrSignUpScreen> createState() => _DarkLoginOrSignUpScreenState();
}

class _DarkLoginOrSignUpScreenState extends State<DarkLoginOrSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const SizedBox(
                    width: 50,
                    height: 10,
                  ),
                  SafeArea(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 4
                              )
                            ]
                        ),
                        child: const Image(image: AssetImage('assets/images/Left 2.png'),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Image(
                image: AssetImage('assets/images/darkUnion(2).png'),
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage('assets/images/darkUnion(1).png'),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                image: AssetImage('assets/images/man.png'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/images/logo-2.png")),
                  const SizedBox(
                    height: 57,
                  ),
                  Text(
                    "Enjoy listening to music",
                    style: GoogleFonts.roboto(
                        fontSize: 26, fontWeight: FontWeight.bold , color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Spotify is a proprietary Swedish audio\nstreaming and media services provider",
                    style: GoogleFonts.roboto(
                        color: const Color(0xffA0A0A0), fontSize: 17),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 500),
                              pageBuilder: (context, animation, secondaryAnimation) => const DarkRegisterPage(),
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
                          height: 73,
                          width: 147,
                          decoration: BoxDecoration(
                            color: const Color(0xff42C83C),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text(
                                'Register',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 500),
                              pageBuilder: (context, animation, secondaryAnimation) => const DarkSignIn(),
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
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.roboto(
                              color: const Color(0xffD7D7D7),
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
