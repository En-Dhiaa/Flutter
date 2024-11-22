import 'package:flutter/cupertino.dart';
import 'package:market/login/login_screen.dart';

import 'app_routes.dart';

Map<String, Widget Function(BuildContext)>routes={
  AppRoutes.login: (context) => const LoginScreen(),
};