import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class EElevatedButtonTheme {
  EElevatedButtonTheme._(); //Eo avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.light,
      backgroundColor: EColors.primaryColor,
      disabledForegroundColor: EColors.darkGrey,
      disabledBackgroundColor: EColors.buttonDisabled,
      side: const BorderSide(color: EColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: EColors.textWhite, fontWeight: FontWeight.w500, fontFamily: 'Urbanist'),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.light,
      backgroundColor: EColors.primaryColor,
      disabledForegroundColor: EColors.darkGrey,
      disabledBackgroundColor: EColors.darkerGrey,
      side: const BorderSide(color: EColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: EColors.textWhite, fontWeight: FontWeight.w600, fontFamily: 'Urbanist'),
    ),
  );
}
