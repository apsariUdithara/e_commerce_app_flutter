import 'package:e_commerce_app_flutter/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app_flutter/utils/constants/image_strings.dart';
import 'package:e_commerce_app_flutter/utils/helpers/network_manager.dart';
import 'package:e_commerce_app_flutter/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app_flutter/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {

  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
  }

  //Email and Password sign-in
  Future<void> emailAndPasswordSignIn() async {
    try {
      //Start Loading
      EFullScreenLoader.openLoadingDialog('Logging you in...', EImages.docerAnimation);

      //Check internet connecivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        EFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!loginFormKey.currentState!.validate()) {
        EFullScreenLoader.stopLoading();
      }

      //Save Data if remember me is activated
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login user using email and password authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //Remove Loader
      EFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      EFullScreenLoader.stopLoading();
      ELoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}