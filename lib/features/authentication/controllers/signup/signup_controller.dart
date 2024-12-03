import 'package:e_commerce_app_flutter/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app_flutter/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app_flutter/features/authentication/controllers/signup/userModel.dart';
import 'package:e_commerce_app_flutter/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter/utils/helpers/network_manager.dart';
import 'package:e_commerce_app_flutter/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app_flutter/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  SignupController();

  ///variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();


  /// --Signup
  void signup() async {
    try {
      //Start loading
      EFullScreenLoader.openLoadingDialog('We are processing your information...', EImages.docerAnimation);

      //Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        EFullScreenLoader.stopLoading();
        return;
      }

      //Form validation
      if (!signupFormKey.currentState!.validate()){
        EFullScreenLoader.stopLoading();
        return;
      }

      //Privacy Policy check
      if (!privacyPolicy.value) {
        EFullScreenLoader.stopLoading();
        ELoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create the account you must accept the privacy policy.',);
        return;
      }

      //Authenticate user data
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      //Save data in firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      EFullScreenLoader.stopLoading();

      //Show success message
      ELoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.'
      );

      //Move to verify email screen
      Get.to(() => const VerifyEmailScreen());

    } catch (e) {
      //Show error
      EFullScreenLoader.stopLoading();
      ELoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}