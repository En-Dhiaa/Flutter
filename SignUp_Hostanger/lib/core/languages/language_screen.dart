import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/languages/change_local.dart';


class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              padding:const EdgeInsets.all(10),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Image(
                    height: 260,
                    width: 280,
                    fit: BoxFit.fill,
                    image: AssetImage("assets/logo/lan.png"
            )),
                Text("1".tr,
                  style:const TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),),
                const SizedBox(height: 30,),
                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: 50,
                        child: MaterialButton(
                          color: Colors.red,
                          onPressed: (){
                    controller.changeLang("ar");
                    Get.toNamed(AppRoutes.onboarding);
                  },
                        child: const Text("Arabic",
                          style: TextStyle(color: Colors.white, fontSize: 25),),
                ),
        ),
                  const SizedBox(height: 15,),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.red,
                      onPressed: (){
                        controller.changeLang("en");
                        Get.offAllNamed(AppRoutes.signIn);

            },
                            child:const Text("English",
                              style: TextStyle(color: Colors.white, fontSize: 25),),
                          ),
        )
      ],
              ),
            )

    )

      ;
  }
}
