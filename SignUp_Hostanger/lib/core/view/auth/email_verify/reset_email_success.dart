import 'package:flutter/material.dart';

class ResetEmailSuccess extends StatelessWidget {
  const ResetEmailSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    //VerifyEmailOfSignupControllerImp controller= Get.put(VerifyEmailOfSignupControllerImp());
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
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/logo/devilSuccess.gif"),
                      width: 200,
                    ),
                    const  SizedBox(height: 20,),
                    const   Center(
                      child: Text(
                        "Verified Successfully",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    const  Center(
                      child: Text(
                        "Well done Mr devil most welcome to our community enjoy murdering ",
                        style: TextStyle(
                            color: Color.fromARGB(208, 255, 0, 70),
                            fontWeight: FontWeight.bold,
                            fontFamily: "PlayfairDisplay",
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const  SizedBox(
                      height: 45,
                    ),
                   // const  Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {
                         // controller.goToSuccessPage();
                        },
                        child: const Text(
                          'Back To Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),



            ],
          ),
        ),
            ]
            ),
        ),
      )
    );
  }
}
