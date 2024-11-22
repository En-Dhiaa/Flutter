import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_Strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 100,
            image: AssetImage(
                dark ? TImage.darkAppLogoDDC : TImage.lightAppLogoDDC)),
        //..........................................................................
        Text(
          TText.logingTitle1,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        //..........................................................................
        Text(
          TText.logingSubTitle1,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
