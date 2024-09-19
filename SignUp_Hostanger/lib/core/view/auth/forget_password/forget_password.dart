import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import '../../../controllers/forget_pasword_controller.dart';
import '../../../share/login_text_from_field.dart';
import '../../../functions/validation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Forget Password",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/logo/fo.png"),
                    width: 200,
                  ),
                  const Center(
                    child: Text(
                      "Reset Your Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Type Your email down there to verify your email to reset the password",
                      style: TextStyle(
                          color: Color.fromARGB(208, 255, 0, 70),
                          fontWeight: FontWeight.bold,
                          fontFamily: "PlayfairDisplay",
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(
                    height: 45,
                  ),
                  LogInTextFromField(
                    valid: (val) {
                      return validInput(val!, 3, 25, "email");
                    },
                    hitText: "Enter your Email", labelText: "Email",
                    iconData: Icons.email_outlined, myController: controller.email,
                    // myController: null,
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),

                  //........................................................................
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        Get.toNamed(AppRoutes.verify);
                      },
                      child: const Text(
                        'send the code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
