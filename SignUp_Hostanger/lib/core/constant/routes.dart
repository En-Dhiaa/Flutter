import 'package:dartz/dartz_streaming.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:market/core/view/auth/forget_password/forget_password.dart';
import 'package:market/core/view/auth/forget_password/reset_password.dart';
import 'package:market/core/view/auth/forget_password/verify_email.dart';
import 'package:market/core/view/test_view.dart';
import '../functions/middleware.dart';
import '../languages/language_screen.dart';
import '../view/auth/email_verify/email_verify.dart';
import '../view/auth/email_verify/reset_email_success.dart';
import '../view/auth/email_verify/verify_email_sign_up.dart';
import '../view/auth/forget_password/reset_password_success.dart';
import '../view/auth/sign_in.dart';
import '../view/auth/sign_up_screen.dart';
import '../view/onboardings/onboarding_screen.dart';
import 'app_routes.dart';


List<GetPage<dynamic>>? routes=[
  GetPage(name: "/", page:()=> const OnboardingScreen(), middlewares: [
    Middleware()
  ]),
  // GetPage(name: "/", page:()=> const TestView(),),
  GetPage(name: AppRoutes.login, page:()=> const SignIn()),
  GetPage(name: AppRoutes.language, page:()=> const LanguageScreen()),
  GetPage(name: AppRoutes.onboarding, page:()=> const OnboardingScreen()),
  GetPage(name: AppRoutes.signIn, page:()=> const SignIn()),
  GetPage(name: AppRoutes.signUp, page:()=> const SignUpScreen()),
  GetPage(name: AppRoutes.forgetPassword, page:()=> const ForgetPassword()),
  GetPage(name: AppRoutes.resetPassword, page:()=> const ResetPassword()),
  GetPage(name: AppRoutes.verify, page:()=> const VerifyEmail()),
  GetPage(name: AppRoutes.verifyEmail, page:()=> const CheckEmailVerify()),
  GetPage(name: AppRoutes.resetPasswordSuccess, page:()=> const ResetPasswordSuccess()),
  GetPage(name: AppRoutes.resetEmailSuccess, page:()=> const ResetEmailSuccess()),
  GetPage(name: AppRoutes.verifyEmailOfSingUp, page:()=> const VerifyEmailOfSingUp()),

];
