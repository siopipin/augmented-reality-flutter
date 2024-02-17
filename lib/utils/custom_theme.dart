import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          elevation: 0,
        ));
  }
}
