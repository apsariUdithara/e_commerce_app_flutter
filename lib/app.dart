import 'package:e_commerce_app_flutter/utils/theme/theme.dart';
import 'package:flutter/material.dart';

//// -- Use this Class to setup themes , initial Bindings , any animations and much
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}