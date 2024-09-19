import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../class/status_request.dart';
import '../../../controllers/verify_email_of_signup_controller.dart';

class VerifyEmailOfSingUp extends StatelessWidget {
  const VerifyEmailOfSingUp({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(VerifyEmailOfSignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Verify Email",
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
            GetBuilder<VerifyEmailOfSignupControllerImp>(builder: (controller)=>
            controller.statusRequest== StatusRequest.loading ?
            const Center(child: Text("Loading..."),)
                :
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
                        onCodeChanged: (String verificationCode) {
                          // showDialog(
                          //     context: context,
                          //     builder: (context){
                          //       return AlertDialog(
                          //         title: const Text("Verification Code"),
                          //         content: Text('Code entered is $verificationCode'),
                          //       );
                          //     }
                          // );
                          // controller.goToSuccessPage();
                        },
                        //runs when every is filled
                        onSubmit: (String verificationCode){
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.info,
                            body: const Center(child: Text(
                              'Verification Code 2 	',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),),
                            title: 'Check',
                            desc:   'Code entered is $verificationCode',
                            btnOkOnPress: () {},
                          ).show();

                          controller.goToSuccessPage(verificationCode);

                        }, // end onSubmit
                      ),
                      //........................................................................
                      const SizedBox(
                        height: 20,
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
            )
          ],
        ),
      ),
    );
  }
}
