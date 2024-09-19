import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/languages/change_local.dart';
import 'package:market/core/languages/translation.dart';
import 'package:market/core/services/services.dart';
import 'core/class/initialbinding.dart';
import 'core/constant/routes.dart';
import 'core/themes/theme.dart';

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
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: InitialBinding(),
      title: 'Flutter Demo',
      // routes: routes,
      getPages: routes,
    );
  }
}
