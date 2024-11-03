import 'package:flutter/material.dart';

class EAppChipTheme {
  EAppChipTheme._();

  static final ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
    labelStyle: TextStyle(
      color: Colors.black,
    ),
  );

  static final ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey,
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      checkmarkColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white));
}
