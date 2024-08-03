import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignUpButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onTap;
  const LoginSignUpButton({super.key , required this.title ,  required this.onTap , this.loading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff42C83C),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: loading ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ) : Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}