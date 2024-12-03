import 'package:e_commerce_app_flutter/features/authentication/screens/signup/widgets/terms_conditions_ckeckbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
          Row(children: [
            Expanded(
              child: TextFormField(
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
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ////Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          ////Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          ////Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
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
                  onPressed: () {}, child: const Text(ETexts.createAccount))),
        ]));
  }
}

