import 'package:ddc/features/authentication/screens/SignUP/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spacentSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: dark
                    ? Icon(
                        Icons.turn_right,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.turn_right,
                        color: Colors.black,
                      ),
                labelText: "email",
              ),
            ),
            //........................................................................
            const SizedBox(
              height: TSizes.spaceBetweenFileds,
            ),
            //........................................................................
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: dark
                    ? Icon(
                        Icons.password,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "password",
              ),
            ),
            //........................................................................
            const SizedBox(
              height: TSizes.spaceBetweenFileds,
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
              height: TSizes.spacentSections,
            ),
            //........................................................................
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: dark
                        ? Color.fromARGB(255, 217, 206, 255)
                        : Color.fromARGB(255, 59, 0, 254)),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: dark
                        ? Color.fromARGB(255, 16, 0, 74)
                        : Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            //........................................................................
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(const SignUpScreen());
                    },
                    child: Text('Create Account'))),
          ],
        ),
      ),
    );
  }
}
