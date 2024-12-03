import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class EVerticalImageText extends StatelessWidget {
  const EVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EColors.white,
    this.backgroundColor = EColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: ESizes.spaceBtwItems),
        child: Column(children: [
          ///Circular Icon
          Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ESizes.s),
              decoration: BoxDecoration(
                color:
                backgroundColor ?? (dark ? EColors.black : EColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      color: dark ? EColors.light : EColors.dark))),

          ///Text
          const SizedBox(height: ESizes.spaceBtwItems / 5.5),
          SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 11,
                overflow: TextOverflow.ellipsis,
              )),
        ]),
      ),
    );
  }
}