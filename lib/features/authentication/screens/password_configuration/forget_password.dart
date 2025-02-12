import 'package:e_commerce_app_flutter/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ///Headings
              Text(
                ETexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),

              Text(
                ETexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: ESizes.spaceBtwSections * 2),

              ///Text Field
              TextFormField(
                decoration: const InputDecoration(
                    labelText: ETexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              ///Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.off(() => const ResetPassword()),
                      child: const Text(ETexts.submit)))
            ])));
  }
}
