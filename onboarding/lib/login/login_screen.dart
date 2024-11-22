import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(padding:const EdgeInsets.all(20),
          child: Column(
            children: [
             const Padding(
               padding:  EdgeInsets.only(top: 65),
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

              Form(
                child: Padding(
                  padding:const  EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    children: [
                      TextFormField(
                        // controller: emailTextController,
                        enableInteractiveSelection: true,
                        enableSuggestions: true,
                        keyboardType: TextInputType.name,
                        //style: TextField.materialMisspelledTextStyle,
                        expands: false,
                        decoration: InputDecoration(
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                          prefixIcon:
                          const Icon(
                            Icons.turn_right,
                            color: Colors.white,
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
                        decoration: InputDecoration(
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                          prefixIcon:
                          const  Icon(
                            Icons.password,
                            color: Colors.white,
                          ),

                          suffixIcon:const Icon(Icons.remove_red_eye),
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
                              backgroundColor: const Color.fromARGB(255, 217, 206, 255)
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
                              color: Color.fromARGB(255, 16, 0, 74)

                            ),
                          ),
                        ),
                      ),
                      //........................................................................
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {
                                // Navigator.push(context, SizeTransition5(SignUpScreen()));
                                // // Navigator.of(context).push(MaterialPageRoute(
                                // //     builder: (context) => SignUpScreen()));
                                // //  Get.to(const SignUpScreen());
                              },
                              child:const Text('Create Account'))),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
