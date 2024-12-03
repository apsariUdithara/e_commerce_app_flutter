import 'package:e_commerce_app_flutter/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter/utils/constants/text_strings.dart';
import 'package:e_commerce_app_flutter/utils/device/device_utility.dart';
import 'package:e_commerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ////Horizontal Scrollable Pages}
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: EImages.onBoardingImage1,
                  title: ETexts.onBoardingTitle1,
                  subTitle: ETexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: EImages.onBoardingImage2,
                  title: ETexts.onBoardingTitle2,
                  subTitle: ETexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: EImages.onBoardingImage3,
                  title: ETexts.onBoardingTitle3,
                  subTitle: ETexts.onBoardingSubTitle3),
            ],
          ),

          //// Skip Button
          const OnBoardingSkip(),

//// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

////Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=EHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style:ElevatedButton.styleFrom(shape:CircleBorder(),backgroundColor: dark? EColors.primaryColor :Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
