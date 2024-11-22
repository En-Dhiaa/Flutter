import 'package:ddc/features/utils/constants/colors.dart';
import 'package:ddc/features/utils/constants/helper_functions.dart';
import 'package:ddc/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import '../../models/Widgits/LoginForm.dart';
import '../../models/Widgits/LoginHeader.dart';
import '../../models/Widgits/TFormDivider.dart';
import '../../models/Widgits/TFormIconButtons.dart';
import 'VerifyEmailScreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.addingWithAppBarHeight,
          child: Column(
            children: [
              //    LoginHeader(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Let's create your account",
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              //................................................................................
              // const LoginForm(),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spacentSections),
                  child: Column(
                    children: [
                      TextFormField(
                        enableInteractiveSelection: true,
                        enableSuggestions: true,
                        keyboardType: TextInputType.name,
                        //style: TextField.materialMisspelledTextStyle,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.person_pin_rounded,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.person_pin_rounded,
                                  color: Colors.black,
                                ),
                          labelText: "username",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //........................................................................
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.email_outlined,
                                  color: Colors.black,
                                ),
                          labelText: "Email",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),

                      //...........................................................................
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                          labelText: "Phone Number",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //...........................................................................
                      TextFormField(
                        obscureText: true,
                        // expands: false,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.password,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.password,
                                  color: Colors.black,
                                ),
                          suffixIcon: dark
                              ? Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.black,
                                ),
                          labelText: "password",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //...........................................................................

                      //........................................................................
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //...................Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              // TextButton(
                              //     onPressed: () {},
                              //     child: const Text(
                              //         "I agree to Privacy Policy and Terms of Use")),

                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '${"I agree to "}',
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                TextSpan(
                                    text: 'Privacy ,Policy ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .apply(
                                          color: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                          decoration: TextDecoration.underline,
                                          decorationColor: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                        )),
                                TextSpan(
                                    text: '${",and "}',
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                TextSpan(
                                    text: 'Terms of Use',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .apply(
                                          color: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                          decoration: TextDecoration.underline,
                                          decorationColor: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                        )),
                              ])),
                            ],
                          ),
                        ],
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spacentSections,
                      ),
                      //........................................................................button

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(const VerifyEmailScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: dark
                                  ? Color.fromARGB(255, 96, 65, 255)
                                  : Color.fromARGB(255, 59, 0, 254)),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: dark
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //........................................................................
                    ],
                  ),
                ),
              ),

              ///////////////ـــــــــــــــــــــــــــــــــــــــــــــــــــتdivider
              TFormDivider(dividerText: "Or Sign with"),
              SizedBox(
                height: TSizes.spacebetween,
              ),
              //ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
              TFormIconButons(),
            ],
          ),
        ),
      ),
    );
  }
}
