import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/data/remote/auth/verify_code_sign_up.dart';

import '../class/status_request.dart';
import '../functions/handling_data.dart';

abstract class VerifyEmailOfSignupController extends GetxController {
  goToSuccessPage(String verificationCode);
}

class VerifyEmailOfSignupControllerImp extends VerifyEmailOfSignupController {
 String? email;
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());


  StatusRequest?  statusRequest;

   @override
  goToSuccessPage(verificationCode) async{
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.postData( email!, verificationCode);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status']=="success"){
        Get.offAllNamed(AppRoutes.resetEmailSuccess);
      }else{
        Get.defaultDialog(
            title: "Warning" , middleText: "Phone Number Or Email Already Exists"
        );

      }
    }
    update();

  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}
