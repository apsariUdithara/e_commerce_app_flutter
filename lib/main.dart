import 'package:e_commerce_app_flutter/firebase_options.dart';
import 'package:e_commerce_app_flutter/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

import 'app.dart';

Future<void> main() async {
  /// -- Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// --  Get Local Storage
  await GetStorage.init();

  /// Await Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initilialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  // TODO: Initialize Authentication


  runApp(const App());
}


