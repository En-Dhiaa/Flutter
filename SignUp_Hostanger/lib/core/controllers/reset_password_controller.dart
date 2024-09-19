import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccess();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;


  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  resetPassword() {}

  @override
  goToSuccess() {
    Get.toNamed(AppRoutes.resetPasswordSuccess);
  }
}
