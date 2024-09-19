import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/controllers/test_controller.dart';
import '../class/handling_data_view.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return  Scaffold(
      appBar: AppBar(title:const  Text("Test"),),
      body: GetBuilder<TestController>(builder: (controller){
         return HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
             itemCount: controller.data.length,
             itemBuilder: (context, index){
               return Text("${controller.data}");
             }));


      }),
    );
  }
}
