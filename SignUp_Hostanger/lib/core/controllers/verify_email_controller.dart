import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

abstract class VerifyEmailController extends GetxController {
  verifyCodeMeth();
  goToResetPassword();
}

class VerifyEmailControllerImp extends VerifyEmailController {
  late String verifyCode;



  @override
  verifyCodeMeth() {}

  @override
  goToResetPassword() {
    Get.offAllNamed(AppRoutes.resetPassword);
  }
}
