import 'package:flutter/material.dart';

class ResetPasswordSuccess extends StatelessWidget {
  const ResetPasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/logo/devilSuccess.gif"),
                    width: 200,
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Text(
                      "Verified Successfully",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Well done Mr devil if forget it again we will .. you know what ",
                      style: TextStyle(
                          color: Color.fromARGB(208, 255, 0, 70),
                          fontWeight: FontWeight.bold,
                          fontFamily: "PlayfairDisplay",
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),




          ],
        ),
      ),
    ]
    ),
      )
    );
  }
}
