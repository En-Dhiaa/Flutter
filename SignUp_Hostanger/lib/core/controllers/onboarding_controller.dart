import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/services/services.dart';
import '../view/onboardings/static.dart';

abstract class OnboardingController extends GetxController{
  next();
  onPageChanged(int index);
  skip();
}
class OnboardingControllerImp extends OnboardingController{
  late PageController pageController;

  int currentPage =0;
  MyServices myServices=Get.find();

  @override
 next() {
    currentPage++;
    if(currentPage > onboardingList.length -1){
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoutes.language);
      //print("page 4");
    }else{
    pageController.animateToPage(currentPage,
        duration:const Duration(milliseconds: 900), curve: Curves.easeInOut);}
  }
  @override
  skip() {
    Get.offAllNamed(AppRoutes.language);
  }
  @override
  onPageChanged(int index) {
currentPage=index;
update();
  }
  @override
  void onInit(){
    pageController = PageController();
    super.onInit();
  }

}