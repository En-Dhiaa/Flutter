import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/constant/sizes.dart';

import 'colors.dart';

class DFormIconButtons extends StatelessWidget {
  const DFormIconButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.forgetPassword);
              },
              icon: const Image(
                image: AssetImage("assets/logo/google.gif"),
                width: 30,
                height: 30,
                fit: BoxFit.fill,
              )),
        ),
        const SizedBox(
          width: TSizes.spacebetween,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.darkGrey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage("assets/logo/facebook.gif"),
                width: 30,
                height: 30,
                fit: BoxFit.fill,
              )),
        ),
      ],
    );
  }
}
