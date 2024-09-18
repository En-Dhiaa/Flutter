import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/langauges/change_local.dart';
import 'package:market/core/langauges/language_screen.dart';
import 'package:market/core/langauges/translation.dart';
import 'package:market/core/services/services.dart';
import 'package:market/onboardings/onboarding_screen.dart';
import 'core/constant/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const LanguageScreen(),
      routes: routes,
    );
  }
}
