import 'package:e_commerce_app_flutter/firebase_options.dart';
import 'package:e_commerce_app_flutter/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'app.dart';

Future<void> main() async {
  // TODO: Add Widgets Binding
  // TODO: Init Local Storage
  // TODO: AWait NAtive SPlash
  // TODO: Initilialize Firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform).then(
  //     (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );
  // TODO: Initialize Authentication


  runApp(const App());
}


