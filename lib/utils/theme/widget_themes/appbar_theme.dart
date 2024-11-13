import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class EAppBarTheme{
  EAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconTheme: IconThemeData(color: EColors.iconPrimary, size: ESizes.iconMd),
    actionsIconTheme: IconThemeData(color: EColors.iconPrimary, size: ESizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: EColors.black, fontFamily: 'Urbanist'),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: EColors.dark,
    surfaceTintColor: EColors.dark,
    iconTheme: IconThemeData(color: EColors.black, size: ESizes.iconMd),
    actionsIconTheme: IconThemeData(color: EColors.white, size: ESizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: EColors.white, fontFamily: 'Urbanist'),
  );
}