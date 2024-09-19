import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/data/remote/auth/signup.dart';

import '../class/status_request.dart';
import '../functions/handling_data.dart';

abstract class SignUpController extends GetxController {
  signUpMeth();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
  SignUpData  signUpData = SignUpData(Get.find());
  List data = [];
 StatusRequest? statusRequest;

  @override
  signUpMeth() async {
    if(formState.currentState!.validate()){

      statusRequest = StatusRequest.loading;
      update();

      var response = await signUpData.postData(username.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status']=="success"){
          // data.addAll(response['data']);
          Get.offAllNamed(AppRoutes.verifyEmailOfSingUp ,arguments: {
            "email" : email.text
          });
        }else{
          Get.defaultDialog(
              title: "Warning" , middleText: "Phone Number Or Email Already Exists"
          );

        }
      }
      update();
    }else{

    }
  }

  @override
  goToSignIn() {
    Get.offAllNamed(AppRoutes.signIn);
  }


  }



