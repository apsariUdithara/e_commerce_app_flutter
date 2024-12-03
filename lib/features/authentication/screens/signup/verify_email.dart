import 'package:e_commerce_app_flutter/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app_flutter/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app_flutter/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app_flutter/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ]),
        body: SingleChildScrollView(
          //Padding to give default Equal Space on all sides in all screens
            child: Padding(
                padding: const EdgeInsets.all(ESizes.defaultSpace),
                child: Column(
                  children: [
                    ////Image
                    Image(
                      image: AssetImage(EImages.deliveredEmailIllustration),
                      width: EHelperFunctions.screenWidth() * 0.6,
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    ////Title and Subtitle
                    Text(
                      ETexts.confirmEmail,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    Text(
                      email ?? '',
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    Text(
                      ETexts.confirmEmailSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    ////Buttons
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => controller.checkEmailVerificationStatus(),
                          child: const Text(ETexts.tContinue)),
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () => controller.sendEmailVerification(),
                            child: const Text(ETexts.resendEmail))),
                  ],
                ))));
  }
}