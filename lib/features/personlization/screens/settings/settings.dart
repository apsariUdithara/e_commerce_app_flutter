import 'package:e_commerce_app_flutter/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_flutter/common/widgets/containers/primary_header_container.dart';
import 'package:e_commerce_app_flutter/common/widgets/list_tiles/settings_menu_tiles.dart';
import 'package:e_commerce_app_flutter/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ////Header
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  EAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: EColors.white),
                    ),
                  ),

                  ///User Profile Card
                  const EUserProfileTile(),
                  const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            ),

            ///Body
            ///
            Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  ////Account Settings
                  const ESectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  ESettingsMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In- progress and completed orders',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notifications message',
                    onTap: () {},
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  ////App Settings
                  SizedBox(height: ESizes.spaceBtwSections),
                  ESectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: ESizes.spaceBtwItems),
                  ESettingsMenuTitle(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),
                  ESettingsMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result in safe foe all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ESettingsMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///Logout Button
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
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
