import 'package:e_commerce_app_flutter/features/authentication/controllers/login/login_controller.dart';
import 'package:e_commerce_app_flutter/utils/validators/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            // Password
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
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),
            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Obx(() => Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                // Forget Password
                TextButton(
                    onPressed: ()=>Get.to(()=>const ForgetPassword()),
                    child: const Text(ETexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.emailAndPasswordSignIn(), child: Text(ETexts.signIn))),
            const SizedBox(height: ESizes.spaceBtwItems),
            // Create Account
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: ()=>Get.to(()=>const SignUpScreen()),
                    child: Text(ETexts.createAccount))),
          ],
        ),
      ),
    );
  }
}