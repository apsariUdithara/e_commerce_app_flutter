import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EVerticalImageText(
              image: EImages.shoeIcon,
              title: 'Shoes',
              onTap: () {});
        },
      ),
    );
  }
}