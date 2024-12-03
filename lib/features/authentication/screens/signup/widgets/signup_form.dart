import 'package:e_commerce_app_flutter/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/signup/widgets/terms_conditions_ckeckbox.dart';
import 'package:e_commerce_app_flutter/utils/validators/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';


import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
        child: Column(children: [
          Row(children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value) => TValidator.validateEmptyText('First name', value),
                expands: false,
                decoration: const InputDecoration(
                  labelText: ETexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                controller: controller.lastName,
                validator: (value) => TValidator.validateEmptyText('Last name', value),
                expands: false,
                decoration: const InputDecoration(
                  labelText: ETexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            )
          ]),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          ////Username

          TextFormField(
            controller: controller.username,
            validator: (value) => TValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ////Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          ////Phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          ////Password
          Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: const InputDecoration(
                  labelText: ETexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash
                      //onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                      //icon: const Icon(Iconsax.eye_slash)
                  ),
                ),
              ),
          ),

          const SizedBox(height: ESizes.spaceBtwSections),

          ////TermsConditions checkbox
          const ETermsAndConditionsCheckbox(),
          const SizedBox(height: ESizes.spaceBtwSections),

          ////SignUp Button

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.signup(),
                  child: const Text(ETexts.createAccount))),
        ]));
  }
}

