import 'package:e_commerce_app_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=EHelperFunctions.isDarkMode(context) ;
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect:  ExpandingDotsEffect(
            activeDotColor: dark? EColors.light:EColors.dark,dotHeight: 6),
      ),
    );
  }
}