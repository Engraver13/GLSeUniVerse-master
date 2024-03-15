import 'package:GLSeUniVerse/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:GLSeUniVerse/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: SplashScreen(),
    );
  }
}
