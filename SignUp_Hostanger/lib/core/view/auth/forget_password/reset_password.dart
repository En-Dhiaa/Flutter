import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/reset_password_controller.dart';
import '../../../share/login_text_from_field.dart';
import '../../../functions/validation.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Reset Password",
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
                    image: AssetImage("assets/logo/Rest.png"),
                    width: 300,
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
                      "Type the new password down below and don not forget it again!",
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
                      return validInput(val!, 5, 25, "password");
                    },
                    hitText: "Enter the password", labelText: "password",
                    iconData: Icons.security, myController: controller.password,
                    // myController: null,
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),
                  LogInTextFromField(
                    valid: (val) {
                      return validInput(val!, 5, 25, "password");
                    },
                    hitText: "Re Enter the password", labelText: "Re-password",
                    iconData: Icons.security_update_good, myController: controller.rePassword,
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
                        controller.goToSuccess();
                      },
                      child: const Text(
                        'Reset',
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
