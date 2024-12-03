import 'package:e_commerce_app_flutter/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app_flutter/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
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
                      'support@coding.com',
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
                          onPressed: () => Get.to(() => SuccessScreen(
                                image: EImages.staticSuccessIllustration,
                                title: ETexts.yourAccountCreatedSubTitle,
                                subTitle: ETexts.yourAccountCreatedSubTitle,
                                onPressed: () =>Get.to(() => const LoginScreen()),
                              )),
                          child: const Text(ETexts.tContinue)),
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),

                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(ETexts.resendEmail))),
                  ],
                ))));
  }
}
