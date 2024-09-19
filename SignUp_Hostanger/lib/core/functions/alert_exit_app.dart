import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool?> alertExitApp(){
   Get.defaultDialog(
    title: "تنبية",
    middleText: "هل تريد الخروج من التطبيق ؟",
    actions: [
      ElevatedButton(onPressed: (){
        exit(0);
      }, child:const Text("موافق")),
      ElevatedButton(onPressed: (){
        Get.back();
      }, child:const Text("الغاء")),
    ]);
  return Future.value(true);
}

// Future<bool?> DailogShow(){
//   Awes
//   Get.defaultDialog(
//       title: "تنبية",
//       middleText: "هل تريد الخروج من التطبيق ؟",
//       actions: [
//         ElevatedButton(onPressed: (){
//           exit(0);
//         }, child:const Text("موافق")),
//         ElevatedButton(onPressed: (){
//           Get.back();
//         }, child:const Text("الغاء")),
//       ]);
//   return Future.value(true);
// }