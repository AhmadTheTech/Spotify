import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/DarkMode/dark_choose_mode.dart';
import 'package:spotify_app/screens/choose_mode.dart';

class DarkGetStartedScreen extends StatefulWidget {
  const DarkGetStartedScreen({super.key});

  @override
  State<DarkGetStartedScreen> createState() => _DarkGetStartedScreenState();
}

class _DarkGetStartedScreenState extends State<DarkGetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/started.png') , fit: BoxFit.cover),
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
              Text("Enjoy listening to music" , style: GoogleFonts.roboto(fontSize: 27 , fontWeight: FontWeight.bold,color: const Color(0xffDADADA)),),
              const SizedBox(
                height: 10,
              ),
              Text("Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Sagittis\nenim purus sed phasellus. Cursus\nornare id scelerisque aliquam." , textAlign: TextAlign.center, style: GoogleFonts.roboto(color: const Color(0xff797979) , fontSize: 18),),
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) => const ChooseModePage(),
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
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (context, animation, secondaryAnimation) => const DarkChooseModePage(),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
