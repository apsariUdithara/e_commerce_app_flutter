import 'dart:async';

import 'package:e_commerce_app_flutter/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app_flutter/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter/utils/constants/text_strings.dart';
import 'package:e_commerce_app_flutter/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  //Send email
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send email verification link
  sendEmailVerification() async{
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      ELoaders.errorSnackBar(title: 'Email Sent', message: 'Please Check your inbox and verify your email.');
    } catch (e) {
      ELoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  //Timer to automatically redirect an email verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
            () => SuccessScreen(
                image: EImages.successfullyRegisterAnimation,
                title: ETexts.yourAccountCreatedTitle,
                subTitle: ETexts.yourAccountCreatedSubTitle,
                onPressed: () => AuthenticationRepository.instance.screenRedirect(),
            )
        );
      }
    });
  }

  // Manually check if email is verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
          () => SuccessScreen(
              image: EImages.successfullyRegisterAnimation,
              title: ETexts.yourAccountCreatedTitle,
              subTitle: ETexts.yourAccountCreatedSubTitle,
              onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
      );
    }
  }
}