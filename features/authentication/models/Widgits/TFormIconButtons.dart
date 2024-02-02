import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/sizes.dart';

class TFormIconButons extends StatelessWidget {
  const TFormIconButons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.darkGrey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImage.google),
                width: TSizes.iconlg,
                height: TSizes.iconlg,
              )),
        ),
        const SizedBox(
          width: TSizes.spacebetween,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.darkGrey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImage.facebook),
                width: TSizes.iconMd,
                height: TSizes.iconMd,
              )),
        ),
      ],
    );
  }
}
