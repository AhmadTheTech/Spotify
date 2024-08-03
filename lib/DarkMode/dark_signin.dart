import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DarkSignIn extends StatefulWidget {
  const DarkSignIn({super.key});

  @override
  State<DarkSignIn> createState() => _DarkSignInState();
}

class _DarkSignInState extends State<DarkSignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [

                Row(
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
                    const Spacer(),
                    const SafeArea(
                        child:
                        Image(image: AssetImage("assets/images/logo-3.png"))),
                    const Spacer(),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Sign In",
                  style: GoogleFonts.roboto(
                      color: const Color(0xffF2F2F2),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "If You Need Any Support",
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 16, fontWeight: FontWeight.w400 , color: const Color(0xffE1E1E1)),
                    ),
                    const SizedBox(
                      width: 05,
                    ),
                    Text(
                      "Click Here",
                      style: GoogleFonts.robotoCondensed(
                          color: const Color(0xff38B432),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 25),
                            hintText: 'Enter Username Or Email',
                            hintStyle: GoogleFonts.roboto(
                                fontSize: 16,
                                color: const Color(0xffA7A7A7),
                                fontWeight: FontWeight.normal),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                const BorderSide(color: Colors.grey))),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 23),
                            suffixIcon: const Image(
                              image: AssetImage('assets/icons/Hide.png'),
                            ),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.roboto(
                                fontSize: 16,
                                color: const Color(0xffA7A7A7),
                                fontWeight: FontWeight.normal),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                const BorderSide(color: Colors.grey))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 72,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xff42C83C),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(children: <Widget>[
                          const Expanded(child: Divider()),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("OR" , style: GoogleFonts.roboto(
                              color: const Color(0xff383838),
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(child: Divider()),
                        ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/icons/google.png')),
                          SizedBox(
                            width: 50,
                          ),
                          Image(image: AssetImage('assets/icons/ios.png')),
                        ],
                      ),
                      const SizedBox(
                        height: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Not A Member?",
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.w400,
                                color: const Color(0xffDBDBDB)),
                          ),
                          const SizedBox(
                            width: 05,
                          ),
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
                              "Register Now",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: const Color(0xff288CE9),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
