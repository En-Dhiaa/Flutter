import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

abstract class ForgetPasswordController extends GetxController{
  login();
  goToSignUp();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }


  @override
  login() {

  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.verify);
  }

}