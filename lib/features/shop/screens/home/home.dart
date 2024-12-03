import 'package:e_commerce_app_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/containers/primary_header_container.dart';
import '../../../../common/widgets/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  const EHomeAppBar(),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  ///Searchbar
                  const ESearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: ESizes.spaceBtwItems),

                        ////Categories Scrollable
                        const EHomeCategories(),
                      ],
                    ),
                  ),
                   const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




