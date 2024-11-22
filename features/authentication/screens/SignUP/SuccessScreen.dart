import 'package:ddc/features/authentication/screens/Login/login.dart';
import 'package:ddc/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/text_Strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.black : Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: dark
                ? Icon(
                    Icons.close,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                        dark ? TImage.conformDark : TImage.conformLight)),
                //..........................................................................
                Text(
                  "Your account successfully created!",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.sa,
                ),

                Text(
                  " Your email address!Verify Your email address!Verify Your email address!Verify Your email address!",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: TSizes.sa,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark
                            ? Color.fromARGB(255, 55, 0, 255)
                            : Color.fromARGB(255, 59, 0, 254)),
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: dark
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
      ),
    );
  }
}
