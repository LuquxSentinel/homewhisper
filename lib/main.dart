import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homewhisper/pages/landingpage.dart';

void main() {
  runApp(const HomeWhisper());
}

class HomeWhisper extends StatelessWidget {
  const HomeWhisper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
