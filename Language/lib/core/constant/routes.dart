import 'package:flutter/cupertino.dart';
import 'package:market/login/login_screen.dart';
import 'package:market/onboardings/onboarding_screen.dart';

import '../langauges/language_screen.dart';
import 'app_routes.dart';

Map<String, Widget Function(BuildContext)>routes={
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.language: (context) => const LanguageScreen(),
  AppRoutes.onboarding: (context) => const OnboardingScreen(),

};