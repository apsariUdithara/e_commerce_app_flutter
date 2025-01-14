import 'package:flutter/material.dart';

class EColors {
  EColors._();

  // App Basic colors
  static const Color primaryColor = Color(0xFF4434ab);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color tertiaryColor = Color(0xFF5541d6);
  static const Color accent = Color(0xFFb0c7ff);

  //Gradient Colors
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xFF6200EE), Color(0xFFB819D2)],
    stops: [0.0, 1.0],
  );


  // Icon colors
  static const Color iconPrimary = Color(0xFF8D8D8D);

  // Text colors
  static const Color textPrimary = Color(0xFF272727);
  static const Color textSecondary = Color(0xFF656565);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF5F5F5);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = EColors.white.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFF313131);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFD9D9D9);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}