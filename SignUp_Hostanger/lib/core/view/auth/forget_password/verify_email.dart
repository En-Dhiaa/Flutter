import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../controllers/verify_email_controller.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyEmailControllerImp controller = Get.put(VerifyEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Verify ",
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
                    image: AssetImage("assets/logo/Verify.gif"),
                    width: 200,
                  ),
                  const SizedBox(height: 20,),
                  const Center(
                    child: Text(
                      "Verify Your Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Type the code that you have received in your email down below",
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
                  // LogInTextFromField(
                  //   hitText: "Enter code here", labelText: "Verify",
                  //   iconData: Icons.verified_outlined, myController: controller.email,
                  //   // myController: null,
                  // ),
                  OtpTextField(
                    fieldWidth: 50,
                    focusedBorderColor:Colors.red ,
                    borderRadius: BorderRadius.circular(10),
                    numberOfFields: 5,
                    borderColor:  Colors.red,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){

                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                      controller.goToResetPassword();
                    }, // end onSubmit
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),

                  //........................................................................
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style:
                  //     ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  //     onPressed: () {
                  //       Get.toNamed(AppRoutes.resetPassword);
                  //     },
                  //     child: const Text(
                  //       'Verify',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),

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
