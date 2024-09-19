import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';
import 'package:market/core/functions/alert_exit_app.dart';
import 'package:market/core/functions/validation.dart';
import '../../controllers/login_controller.dart';
import '../../constant/divider_login.dart';
import '../../constant/social_buttons.dart';
import '../../share/login_text_from_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
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
      body: PopScope(
        canPop: false,
        onPopInvoked: (value){
          if(value){
            return;
          }else{
           alertExitApp();
          }

        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Form(
                  key: controller.formState,
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/logo/lo.gif"),
                        width: 80,
                      ),
                      const Center(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Sign in with your email and password or continue with social media",
                          style: TextStyle(
                              color: Color.fromARGB(208, 255, 0, 70),
                              fontWeight: FontWeight.bold,
                              fontFamily: "PlayfairDisplay",
                              fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      LogInTextFromField(
                        valid: (val) {
                          return validInput(val!, 8, 25, "email");
                        },
                        hitText: "Enter your Email", labelText: "Email",
                        iconData: Icons.email_outlined, myController: controller.email,
                        // myController: null,
                      ),
                      //........................................................................
                      const SizedBox(
                        height: 20,
                      ),

                      GetBuilder<LoginControllerImp>(builder: (controller)=>LogInTextFromField(
                        onTapIcon: (){
                          controller.showPassword();
                        },
                        obscureText: controller.isShowPassword,
                        valid: (val) {
                          return validInput(val!, 3, 25, "password");
                        },
                        hitText: "Enter your Password", labelText: "Password",
                        iconData: Icons.lock_outline, myController: controller.password,
                        // myController: null,
                      ),),
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
                              const Text("Remember Me"),
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.verify);
                              },
                              child: const Text("Forget Password")),
                        ],
                      ),
                      //........................................................................
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                          onPressed: () {
                            controller.login();
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account ?"),
                          TextButton(
                              onPressed: () {
                                controller.goToSignUp();
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const TFormDivider(
                        dividerText: 'Or Sign with',
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const DFormIconButtons(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}
