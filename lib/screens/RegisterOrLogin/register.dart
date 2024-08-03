import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Components/LoginSignUpButton.dart';
import 'package:spotify_app/bottomnav.dart';
import 'package:spotify_app/screens/RegisterOrLogin/signin.dart';
import 'package:get/get.dart';

import '../Home/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool loading = false ;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });

      try {
        await _auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        Get.to(const BottomTabs() , transition: Transition.circularReveal , duration: const Duration(seconds: 2));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration successful'),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
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
                            BoxShadow(color: Colors.grey, blurRadius: 1),
                          ],
                        ),
                        child: const Image(
                          image: AssetImage('assets/images/Left 2.png'),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const SafeArea(
                    child: Image(
                      image: AssetImage("assets/images/logo-3.png"),
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 40),
                ],
              ),
              const SizedBox(height: 80),
              Text(
                "Register",
                style: GoogleFonts.roboto(
                  color: const Color(0xff383838),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "If You Need Any Support",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Click Here",
                    style: GoogleFonts.robotoCondensed(
                      color: const Color(0xff38B432),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Name";
                          }
                          return null;
                        },
                        controller: userNameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 25,
                          ),
                          hintText: 'Full Full Name',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color(0xff383838),
                            fontWeight: FontWeight.normal,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Email";
                          }
                          // Additional email validation can be added here
                          return null;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 23,
                          ),
                          hintText: 'Full Email',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color(0xff383838),
                            fontWeight: FontWeight.normal,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Password";
                          }
                          // Additional password validation can be added here
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 23,
                          ),
                          suffixIcon: const Image(
                            image: AssetImage('assets/icons/Hide.png'),
                          ),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color(0xff383838),
                            fontWeight: FontWeight.normal,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      LoginSignUpButton(
                        title: 'Create Account',
                        loading: loading,
                        onTap: _register,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: Divider()),
                            SizedBox(width: 10),
                            Text("OR"),
                            SizedBox(width: 10),
                            Expanded(child: Divider()),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/icons/google.png')),
                          SizedBox(width: 50),
                          Image(image: AssetImage('assets/icons/ios.png')),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Do You Have An Account?",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                const SignInPage(),
                                transition: Transition.downToUp,
                                duration: const Duration(seconds: 1),
                              );
                            },
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: const Color(0xff288CE9),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
