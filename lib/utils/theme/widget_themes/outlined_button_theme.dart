import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class EOutlinedButtonTheme {
  EOutlinedButtonTheme._(); //Eo avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.dark,
      side: const BorderSide(color: EColors.borderPrimary),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: EColors.black, fontWeight: FontWeight.w600, fontFamily: 'Urbanist'),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: EColors.light,
      side: const BorderSide(color: EColors.borderPrimary),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: EColors.textWhite, fontWeight: FontWeight.w600, fontFamily: 'Urbanist'),
    ),
  );
}
