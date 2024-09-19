import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:market/core/class/status_request.dart';
import 'package:market/core/functions/validation.dart';
import '../../constant/divider_login.dart';
import '../../constant/social_buttons.dart';
import '../../controllers/sign_up_controller.dart';
import '../../share/login_text_from_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override


  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Sign In",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          GetBuilder<SignUpControllerImp>(builder: (controller)=>
              controller.statusRequest== StatusRequest.loading ?
                   Center(child: Lottie.asset("assets/lottie/loading2.json"),)
                  :
              Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Form(
              key: controller.formState,
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "New account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Sign up with your username ,email ,phone ,and password or continue with social media",
                      style: TextStyle(
                          color: Color.fromARGB(208, 255, 0, 70),
                          fontWeight: FontWeight.bold,
                          fontFamily: "PlayfairDisplay",
                          fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  LogInTextFromField(
                    valid: (val) {
                      return validInput(val!, 3, 25, "username");
                    },
                    hitText: "Enter your username", labelText: "Username",
                    iconData: Icons.person_2_outlined,
                    myController: controller.username,
                    // myController: null,
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),
                  LogInTextFromField(
                    textInputType: TextInputType.emailAddress,
                    valid: (val) {
                      return validInput(val!, 8, 25, "email");
                    },
                    hitText: "Enter your Email", labelText: "Email",
                    iconData: Icons.email_outlined,
                    myController: controller.email,
                    // myController: null,
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),
                  LogInTextFromField(
                    textInputType: TextInputType.phone,
                    valid: (val) {
                      return validInput(val!, 8, 15, "phone");
                    },
                    hitText: "Enter your phone number", labelText: "Phone",
                    iconData: Icons.phone, myController: controller.phone,
                    // myController: null,
                  ),
                  //........................................................................
                  const SizedBox(
                    height: 20,
                  ),
                  LogInTextFromField(
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    valid: (val) {
                      return validInput(val!, 5, 25, "password");
                    },
                    hitText: "Enter your Password", labelText: "Password",
                    iconData: Icons.lock_outline,
                    myController: controller.password,
                    // myController: null,
                  ),
                  //........................................................................
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //...................Remember me
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text("Accept polices"),
                        ],
                      ),
                      // TextButton(
                      //     onPressed: () {},
                      //     child: const Text("Forget Password")),
                    ],
                  ),
                  //........................................................................
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        controller.signUpMeth();
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("already have an account ?"),
                      TextButton(
                          onPressed: () {
                            controller.goToSignIn();
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const TFormDivider(
                    dividerText: 'Or Sign with',
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  const DFormIconButtons(),
                ],
              ),
            ),
          ),)
          ],
        ),
      ),
    );
  }
}
