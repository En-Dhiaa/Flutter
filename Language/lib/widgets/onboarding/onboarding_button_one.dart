import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/controllers/onboarding_controller.dart';

class OnboardingButtonOne extends GetView<OnboardingControllerImp> {
  const OnboardingButtonOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            minimumSize: const Size(400, 45)
        ) ,
        onPressed: (){
          controller.next();
        }, child:const Text("Go next", style: TextStyle(fontSize: 18),));
  }
}
