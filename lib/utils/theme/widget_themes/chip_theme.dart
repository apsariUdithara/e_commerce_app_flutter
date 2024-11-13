import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class EChipTheme {
  EChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    checkmarkColor: EColors.white,
    selectedColor: EColors.primaryColor,
    disabledColor: EColors.grey.withOpacity(0.4),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: const TextStyle(color: EColors.black, fontFamily: 'Urbanist'),
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    checkmarkColor: EColors.white,
    selectedColor: EColors.primaryColor,
    disabledColor: EColors.darkerGrey,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: TextStyle(color: EColors.white, fontFamily: 'Urbanist'),
  );
}
