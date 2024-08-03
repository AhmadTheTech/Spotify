import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Components/LoginSignUpButton.dart';
import 'package:spotify_app/bottomnav.dart';
import 'package:spotify_app/screens/Home/home.dart';
import 'package:spotify_app/screens/RegisterOrLogin/register.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // ignore: non_constant_identifier_names
  final EmailController = TextEditingController();
  bool loading = false;
  // ignore: non_constant_identifier_names
  final PasswordController = TextEditingController();
  // ignore: non_constant_identifier_names
  final _FormKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance ;

  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }


  Future<void> login() async {
    if (_FormKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });

      try {
        await _auth.signInWithEmailAndPassword(
          email: EmailController.text.trim(),
          password: PasswordController.text.trim(),
        );
        Get.to(const BottomTabs() , transition: Transition.circularReveal , duration: const Duration(seconds: 2));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Sign In successful'),
            backgroundColor: Colors.green,
          ),
        );
        // Navigate to another page or perform other actions
      } on FirebaseAuthException catch (e) {
        // Display error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message ?? 'An unknown error occurred'),
            backgroundColor: Colors.red,
          ),
        );
      } catch (e) {
        // Display error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('An error occurred: $e'),
            backgroundColor: Colors.red,
          ),
        );
      } finally {
        setState(() {
          loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss keyboard
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  SafeArea(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, blurRadius: 1)
                            ]),
                        child: const Image(
                          image: AssetImage('assets/images/Left 2.png'),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const SafeArea(
                      child:
                          Image(image: AssetImage("assets/images/logo-3.png"))),
                  const Spacer(),
                  const SizedBox(width: 40),
                ],
              ),
              const SizedBox(height: 80),
              Text(
                "Sign In",
                style: GoogleFonts.roboto(
                    color: const Color(0xff383838),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If You Need Any Support",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Click Here",
                    style: GoogleFonts.robotoCondensed(
                        color: const Color(0xff38B432),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _FormKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Your Email Or Username';
                              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            controller: EmailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 25),
                              hintText: 'Enter Username Or Email',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 16,
                                color: const Color(0xff383838),
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Your Password';
                              }
                              return null;
                            },
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            controller: PasswordController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 23),
                              suffixIcon: const Image(
                                image: AssetImage('assets/icons/Hide.png'),
                              ),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 16,
                                color: const Color(0xff383838),
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        "Recovery password",
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff383838)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    LoginSignUpButton(
                      title: 'Sign In',
                      loading: loading,
                      onTap: () {
                        if (_FormKey.currentState!.validate()) {
                          login();
                        }
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(children: <Widget>[
                        Expanded(child: Divider()),
                        SizedBox(width: 10),
                        Text("OR"),
                        SizedBox(width: 10),
                        Expanded(child: Divider()),
                      ]),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/icons/google.png')),
                        SizedBox(width: 50),
                        Image(image: AssetImage('assets/icons/ios.png')),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not A Member?",
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Get.to(const RegisterPage(),
                                transition: Transition.upToDown,
                                duration: const Duration(seconds: 1));
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
    );
  }
}
