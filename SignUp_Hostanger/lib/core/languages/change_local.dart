import 'dart:ui';

import 'package:get/get.dart';
import 'package:market/core/services/services.dart';

class LocaleController extends GetxController{
  Locale? language;
  MyServices myServices = Get.find();
  
  
  changeLang(String langCode){
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLangPref = myServices.sharedPreferences.getString("lang");
    if(sharedLangPref == "ar"){
      language = const Locale("ar");
      
    }else if (sharedLangPref== "en"){
      language = const Locale("en");
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}