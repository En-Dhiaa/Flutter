import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
}

class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formState = GlobalKey<FormState>();
 late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword =true;
  showPassword(){
    isShowPassword = isShowPassword== true ? false : true;
    update();
  }

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
    var formDate = formState.currentState;
    if(formDate!.validate()){
      //print("validet");
    }else{
      // print("validet");
    }
  }

  @override
  goToSignUp() {
  Get.toNamed(AppRoutes.signUp);
  }

}