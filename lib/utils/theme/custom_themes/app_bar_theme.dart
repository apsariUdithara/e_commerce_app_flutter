import 'package:flutter/material.dart';

class EAppBarTheme {
  EAppBarTheme._();

  //Light theme
  static const lightAppBarTheme = AppBarTheme(
    elevation:0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white,size:24),
    actionsIconTheme: IconThemeData(color: Colors.white,size:24),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
  );


  //Dark theme
  static const darkAppBarTheme = AppBarTheme(
    elevation:0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black,size:24),
    actionsIconTheme: IconThemeData(color: Colors.white,size:24),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
  );
}