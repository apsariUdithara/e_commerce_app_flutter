import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/containers/circular_container.dart';
import '../../../../../common/widgets/images/e_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: [
            ERoundedImage(imageUrl: EImages.promoBanner1),
            ERoundedImage(imageUrl: EImages.promoBanner2),
            ERoundedImage(imageUrl: EImages.promoBanner3),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwSections),
        Center(
          child: Obx(
            () => Row(mainAxisSize: MainAxisSize.min, children: [
              for (int i = 0; i < 3; i++)
                ECircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? EColors.primaryColor
                      : EColors.grey,
                ),
            ]),
          ),
        )
      ],
    );
  }
}
