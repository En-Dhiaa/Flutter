import 'package:ddc/features/authentication/controllersOnboarding/onboarding_controller.dart';
import 'package:ddc/features/utils/constants/colors.dart';
import 'package:ddc/features/utils/constants/helper_functions.dart';
import 'package:ddc/features/utils/constants/image_Strings.dart';
import 'package:ddc/features/utils/constants/sizes.dart';
import 'package:ddc/features/utils/constants/text_Strings.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onboardingPage(
                  image: TImage.onBoarding1,
                  title: TText.onBoardingTitle1,
                  subtitle: TText.onBoardingSubTitle1),
              onboardingPage(
                  image: TImage.onBoarding2,
                  title: TText.onBoardingTitle2,
                  subtitle: TText.onBoardingSubTitle2),
              onboardingPage(
                  image: TImage.onBoarding3,
                  title: TText.onBoardingTitle3,
                  subtitle: TText.onBoardingSubTitle3),
            ],
          ),
          //...................................................................... skip
          const OnBoardingSkip(),
          //....................................................................... Dot Naviation
          const OnBoardingSmoothDots(),
          //........................................................................ Circular Button
          OnboardingElevatedButton()
        ],
      ),
    );
  }
}

class OnboardingElevatedButton extends StatelessWidget {
  const OnboardingElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: 30,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.black,
          ),
          child: const Icon(Icons.arrow_right),
        ));
  }
}

class OnBoardingSmoothDots extends StatelessWidget {
  const OnBoardingSmoothDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelpFunctions.IsDarkMode(context);

    return Positioned(
        bottom: 30,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6,
            ),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3));
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 40,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Text(
              "SKIP",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )));
  }
}

class onboardingPage extends StatelessWidget {
  const onboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelpFunctions.screenWidth() * 0.8,
            height: THelpFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spacebetween,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
