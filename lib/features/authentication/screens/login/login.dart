import 'package:e_commerce_app_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app_flutter/utils/constants/text_strings.dart';
import 'package:e_commerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title, and subtitle (Previously ELoginHeader)
              ELoginHeader(dark: dark),

              // Form
              ELoginForm(),

              //// Divider
              EFormDivider(dividerText: ETexts.orSignInWith.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections),
              //// Footer

              ESocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}






