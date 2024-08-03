import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/screens/RegisterOrLogin/auth.dart';
import 'package:spotify_app/screens/RegisterOrLogin/register.dart';
import 'package:spotify_app/screens/RegisterOrLogin/signin.dart';

class AfterLogout extends StatefulWidget {
  const AfterLogout({super.key});

  @override
  State<AfterLogout> createState() => _AfterLogoutState();
}

class _AfterLogoutState extends State<AfterLogout> {
  UserChecking checkuser = UserChecking();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage('assets/images/Union.png'),
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage('assets/images/Union2.png'),
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
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Spotify is a proprietary Swedish audio\nstreaming and media services provider",
                  style: GoogleFonts.roboto(
                      color: const Color(0xff797979), fontSize: 17),
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
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     transitionDuration: const Duration(milliseconds: 500),
                        //     pageBuilder: (context, animation, secondaryAnimation) => const RegisterPage(),
                        //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        //       return SlideTransition(
                        //         position: Tween<Offset>(
                        //           begin: const Offset(1.0, 0.0),
                        //           end: Offset.zero,
                        //         ).animate(animation),
                        //         child: child,
                        //       );
                        //     },
                        //   ),
                        // );
                        Get.to(const RegisterPage() , transition: Transition.leftToRight , duration: const Duration(seconds: 1));
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
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     transitionDuration: const Duration(milliseconds: 500),
                        //     pageBuilder: (context, animation, secondaryAnimation) => const SignInPage(),
                        //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        //       return SlideTransition(
                        //         position: Tween<Offset>(
                        //           begin: const Offset(1.0, 0.0),
                        //           end: Offset.zero,
                        //         ).animate(animation),
                        //         child: child,
                        //       );
                        //     },
                        //   ),
                        // );
                        Get.to(const SignInPage() , transition: Transition.rightToLeft , duration: const Duration(seconds: 1));
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.roboto(
                            color: const Color(0xff313131),
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
    );
  }
}
