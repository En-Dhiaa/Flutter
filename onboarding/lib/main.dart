import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/onboardings/onboarding_screen.dart';

import 'core/constant/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
      routes: routes,
    );
  }
}
