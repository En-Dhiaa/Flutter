
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/controllers/onboarding_controller.dart';
import 'package:market/onboardings/static.dart';

import '../widgets/onboarding/custom_onboarding_skip_button.dart';
import '../widgets/onboarding/onboarding_button_one.dart';
import '../widgets/onboarding/pages_generates.dart';

class OnboardingScreen extends GetView<OnboardingControllerImp> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
             children: [
               Expanded(
                 flex: 4,
                 child: PageView.builder(
                   controller: controller.pageController,
                   onPageChanged: (val){

                    controller.onPageChanged(val);
                     print(val);
                   },
                   itemCount: onboardingList.length,
                   itemBuilder: (context, i) => Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 60, bottom: 0),
                         child: Text(onboardingList[i].title! ,
                           style: const TextStyle(fontWeight: FontWeight.bold,
                           fontSize: 20, fontFamily: "PlayfairDisplay"
                         ),),
                       ),
                       const SizedBox(height: 10,),
                       Image.asset(onboardingList[i].image!,
                         width: 300,height: 300, fit: BoxFit.fill,),
                       const SizedBox(height: 30,),
                       Container(

                         width: double.infinity,
                         alignment: Alignment.center,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 40,right: 40),
                           child: Text(onboardingList[i].body!,
                             textAlign: TextAlign.center ,style: const TextStyle(
                               height: 1.6,
                               fontFamily: "PlayfairDisplay",
                               fontWeight: FontWeight.bold,
                               fontSize: 25,
                             ),),
                         ),
                       ),


                     ],
                   ),

                 ),
               ),
               const  Expanded(

                     child: Column(
                     children: [
                        CustomOnboardingPages(),
                            SizedBox(height: 12,),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                              OnboardingButtonOne(),
                             SizedBox(height: 10,),
                            CustomOnboardingSkipButton(),
                          ],
                        ))
                  ],
                )),


        ]
                        ),
      )

    );
  }
}