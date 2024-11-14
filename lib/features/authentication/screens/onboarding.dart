import 'package:e_commerce_app_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter/utils/constants/texts.dart';
import 'package:e_commerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ////Horizontal Scrollable Pages
          PageView(
            children: [
              Column(

                children: [
                  Image(
                    width: EHelperFunctions.screenWidth() * 0.8,
                    height: EHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(EImages.onBoardingImage1),
                  ),
                  Text(
                    ETexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Text(
                    ETexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  //// Skip Button

  //// Dot Navigation SmoothPageIndicator

  ////Circular Button
}
