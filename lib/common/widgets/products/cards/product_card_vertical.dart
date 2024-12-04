import 'package:e_commerce_app_flutter/common/styles/shadows.dart';
import 'package:e_commerce_app_flutter/common/widgets/products/cards/product_price_text.dart';
import 'package:e_commerce_app_flutter/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../containers/rounded_container.dart';
import '../../icons/e_circular_icon.dart';
import '../../images/e_rounded_image.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkGrey : EColors.white,
        ),
        child: Column(
          children: [
            ERoundedContainer(
              height: 180,
              width: 180,
              padding: const EdgeInsets.all(ESizes.s),
              backgroundColor: dark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  ///Thumbnail image
                  ERoundedImage(
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                  ),
      
                  ///Sale tag
                  Positioned(
                    top: 12,
                    child: ERoundedContainer(
                      radius: ESizes.s,
                      backgroundColor: EColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.s, vertical: ESizes.s),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EColors.black),
                      ),
                    ),
                  ),
      

                  /// Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child:
                          ECircularIcon(icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems/2),
      
            ////Details
             Padding(
              padding:EdgeInsets.only(left:ESizes.s),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  EProductTitleText(title: 'Green nike Air Shoes',smallSize: true,),
                  const SizedBox(height: ESizes.spaceBtwItems/2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const EProductPriceText(price:'35.0'),
                      // Text(
                      //   '\$35.51',
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: Theme.of(context).textTheme.headlineMedium,
                      // ),

                      Container(
                        decoration: const BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ESizes.cardRadiusMd),
                            bottomRight: Radius.circular(ESizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: ESizes.iconLg*1.2,
                            height: ESizes.iconLg*1.2,
                            child: Center(child:  Icon(Iconsax.add, color: EColors.white))),
                      ),
                    ],
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
