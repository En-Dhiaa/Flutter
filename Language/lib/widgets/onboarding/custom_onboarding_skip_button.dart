import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../controllers/onboarding_controller.dart';

class CustomOnboardingSkipButton extends GetView<OnboardingControllerImp>  {
  const CustomOnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style:ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
            minimumSize: const Size(400, 45)
        ) ,
        onPressed: (){
          controller.skip();
        }, child:const
    Text("SKIP0", style: TextStyle(fontSize: 18),));
  }
}
