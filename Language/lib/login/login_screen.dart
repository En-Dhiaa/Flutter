import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.red,
      body: Center(
        child: SingleChildScrollView(
           // padding:const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: List.filled(2,growable: true, const BoxShadow(color: Colors.black)),
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(35),

                ),


              //  height: 900,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                     const Padding(
                       padding:  EdgeInsets.only(top: 65, right: 20, left: 20),
                       child:  Image(
                            height: 220,
                            width: 220,
                            fit: BoxFit.fill,
                            image: AssetImage("assets/logo/logoSign.png"
                            )),
                     ),
                      //..........................................................................
                      const   Text(
                        "Login now ",
                        style: TextStyle(fontSize: 18),),

                      const SizedBox(
                        height: 10,
                      ),
                      //..........................................................................
                      const   Text(
                        "Enjoy Murdering Everyone",
                        style: TextStyle(fontSize: 18),
                      ),
                          const SizedBox(height: 15,),
                      Form(
                        child: Padding(
                          padding:const  EdgeInsets.symmetric(vertical: 4),
                          child: Column(
                            children: [
                              TextFormField(
                                style: const TextStyle(

                                    color: Colors.black,
                                    decorationColor: Colors.black),
                                cursorColor: Colors.red,
                                // controller: emailTextController,
                                enableInteractiveSelection: true,
                                enableSuggestions: true,
                                keyboardType: TextInputType.emailAddress,
                                expands: false,
                                decoration: const InputDecoration(

                                  fillColor: Colors.red,
                                  focusColor: Colors.red,
                                  floatingLabelStyle: TextStyle(color: Colors.black ,fontSize: 20 ,),
                                  hoverColor: Colors.red,
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(50)),
                                      )
                                  ,
                                  prefixIcon:
                                  Icon(
                                    Icons.turn_right,
                                    color: Colors.black,
                                  )

                                  ,
                                  labelText: "email",
                                ),
                              ),
                              //........................................................................
                              const SizedBox(
                                height: 15,
                              ),
                              //........................................................................
                              TextFormField(
                                // controller: passwordTextController,
                                enableInteractiveSelection: true,
                                enableSuggestions: true,
                                keyboardType: TextInputType.phone,
                                //style: TextField.materialMisspelledTextStyle,
                                expands: false,
                                decoration: const InputDecoration(
                                  border:
                                  OutlineInputBorder(borderRadius:
                                  BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(50),),),
                                  prefixIcon:
                                  // Icon(
                                  //   Icons.password,
                                  //   color: Colors.black,
                                  // ),

                                  // suffixIcon:
                                    Icon(Icons.remove_red_eye),
                                  labelText: "password",
                                ),
                              ),
                              //........................................................................
                              const SizedBox(
                                height: 12,
                              ),
                              //........................................................................
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //...................Remember me
                                  Row(
                                    children: [
                                      Checkbox(value: true, onChanged: (value) {}),
                                      const Text("Remember Me"),
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: () {}, child: const Text("Forget Password")),
                                ],
                              ),
                              //........................................................................
                              const SizedBox(
                                height: 12,
                              ),
                              //........................................................................
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:  Colors.red
                                        ),
                                  onPressed: () {
                                    //
                                    // var user = userProvider.users;
                                    // if (user
                                    //     .where((e) =>
                                    // e.email ==
                                    //     emailTextController.text.toString())
                                    //     .length >
                                    //     0 &&
                                    //     user
                                    //         .where((e) =>
                                    //     e.password ==
                                    //         passwordTextController.text.toString())
                                    //         .length >
                                    //         0) {
                                    //   Navigator.push(context, SizeTransition3(MainHome()));
                                    //   // Navigator.of(context).push(
                                    //   //     MaterialPageRoute(builder: (context) => MainHome()));
                                    // }
                                    // else if{
                                    //   if (user.isEmpty) {

                                    //   }
                                    // }
                                    // else {
                                    //   showDialog(
                                    //     context: context,
                                    //     builder: (context) => AlertDialog(
                                    //       title: Text('Error'),
                                    //       content: Text('Invalid email or password'),
                                    //       actions: [
                                    //         TextButton(
                                    //           onPressed: () => Navigator.pop(context),
                                    //           child: Text('OK'),
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   );
                                    // }
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.white

                                    ),
                                  ),
                                ),
                              ),
                              //........................................................................
                              SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton(

                                      onPressed: () {
                                        Get.offAllNamed(AppRoutes.language);
                                        // Navigator.push(context, SizeTransition5(SignUpScreen()));
                                        // // Navigator.of(context).push(MaterialPageRoute(
                                        // //     builder: (context) => SignUpScreen()));
                                        // //  Get.to(const SignUpScreen());
                                      },
                                      child:const Text('Create Account'))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
