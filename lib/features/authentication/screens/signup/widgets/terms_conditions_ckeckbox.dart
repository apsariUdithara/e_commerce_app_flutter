import 'package:e_commerce_app_flutter/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ETermsAndConditionsCheckbox extends StatelessWidget {
  const ETermsAndConditionsCheckbox({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            child: Obx(() => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value),
            )),
        const SizedBox(width: ESizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${ETexts.iAgreeTo}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ETexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color:
                dark ? EColors.white : EColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? EColors.white : EColors.primaryColor,
              )),
          TextSpan(
              text: '${ETexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: ETexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color:
                dark ? EColors.white : EColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? EColors.white : EColors.primaryColor,
              )),
        ]))
      ],
    );
  }
}