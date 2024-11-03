import 'package:flutter/material.dart';

class EAppInputDecorationTheme {
  EAppInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme

  (

  errorMaxLines: 3,
  prefixIconColor: Colors.grey,
  suffixIconColor: Colors.grey,
  labelStyle: TextStyle(color: Colors.black, fontSize: 14,),
  hintStyle: TextStyle(color: Colors.black, fontSize: 14,),
  errorStyle: TextStyle(fontStyle: FontStyle.normal),
  floatingLabelStyle: const TextStyle().copyWith(
  color: Colors.black.withOpacity(0.8)),

  border: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.grey),
  borderRadius: BorderRadius.circular(14),
  ),
  enabledBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.grey),
  borderRadius: BorderRadius.circular(14),
  ),
  focusedBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.black12),
  borderRadius: BorderRadius.circular(14),
  ),
  errorBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.red),
  borderRadius: BorderRadius.circular(14),
  ),
  focusedErrorBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.orange),
  borderRadius: BorderRadius.circular(14),
  ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  errorMaxLines: 2,
  prefixIconColor: Colors.grey,
  suffixIconColor: Colors.grey,
  labelStyle: TextStyle(color: Colors.white, fontSize: 14,),
  hintStyle: TextStyle(color: Colors.white, fontSize: 14,),
  errorStyle: TextStyle(fontStyle: FontStyle.normal),
  floatingLabelStyle: const TextStyle().copyWith(
  color: Colors.black.withOpacity(0.8)),

  border: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.grey),
  borderRadius: BorderRadius.circular(14),
  ),
  enabledBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.grey),
  borderRadius: BorderRadius.circular(14),
  ),
  focusedBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.white),
  borderRadius: BorderRadius.circular(14),
  ),
  errorBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.red),
  borderRadius: BorderRadius.circular(14),
  ),
  focusedErrorBorder: const OutlineInputBorder().copyWith(
  borderSide: const BorderSide(width: 1, color: Colors.orange),
  borderRadius: BorderRadius.circular(14))
  );
}
