import 'package:e_commerce_app_flutter/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app_flutter/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app_flutter/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';


import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/input_decoration_theme.dart';
import 'custom_themes/outlined_button_theme.dart';

class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.purple.shade900,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EAppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: EAppCheckboxTheme.lightCheckboxTheme,
    chipTheme: EAppChipTheme.lightChipTheme,
    elevatedButtonTheme: EAppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: EAppInputDecorationTheme.lightInputDecorationTheme,
    outlinedButtonTheme: EAppOutlinedButtonTheme.lightOutlinedButtonTheme,
    textTheme: EAppTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.purple.shade900,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EAppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: EAppCheckboxTheme.darkCheckboxTheme,
    chipTheme: EAppChipTheme.darkChipTheme,
    elevatedButtonTheme: EAppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: EAppInputDecorationTheme.darkInputDecorationTheme,
    outlinedButtonTheme: EAppOutlinedButtonTheme.darkOutlinedButtonTheme,
    textTheme: EAppTextTheme.darkTextTheme,
  );
}
