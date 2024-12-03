import 'package:e_commerce_app_flutter/features/shop/screens/home/home.dart';
import 'package:e_commerce_app_flutter/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final darkMode=EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>controller.selectedIndex.value=index,
            backgroundColor: darkMode ? EColors.black : EColors.white,
            indicatorColor: darkMode ? EColors.white.withOpacity(0.1) : EColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Home'),
            ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;


  final screens =[const HomeScreen(),Container(color: Colors.blue),Container(color: Colors.red),Container(color: Colors.orange )];
}