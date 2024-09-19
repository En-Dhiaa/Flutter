import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:market/core/constant/app_routes.dart';

import '../services/services.dart';

class Middleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    MyServices myServices = Get.find();

    if (myServices.sharedPreferences.getString("onboarding") == "1") {
        return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}