import 'package:ddc/features/utils/constants/helper_functions.dart';
import 'package:ddc/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../models/Widgits/LoginForm.dart';
import '../../models/Widgits/LoginHeader.dart';
import '../../models/Widgits/TFormDivider.dart';
import '../../models/Widgits/TFormIconButtons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.addingWithAppBarHeight,
          child: Column(
            children: const [
              LoginHeader(),
              //................................................................................
              LoginForm(),
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
