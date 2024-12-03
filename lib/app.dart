import 'package:e_commerce_app_flutter/bindings/general_bindings.dart';
import 'package:e_commerce_app_flutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/onboarding/onboarding.dart';

//// -- Use this Class to setup themes , initial Bindings , any animations and much
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: Colors.purple, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}