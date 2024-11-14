import 'package:get/get.dart';

//we are using getx state management
class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index){}

  ////Jump to the specific dot selected page
  void dotNavigationClick(index){
  }

  ///Update current Index &jump to next page
  void nextPAge(){}

  ////Update current indexx & jump to the lat Page
  void skipPage(){}

}