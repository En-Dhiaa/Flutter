import 'package:market/core/class/data_management.dart';
import 'package:market/core/constant/link_api.dart';

class VerifyCodeSignUpData{
  DataManagement dataManagement;
  VerifyCodeSignUpData(this.dataManagement);

  postData(String email ,String verifyCode) async{
    var response = await dataManagement.postData(AppLink.verifyCodeSigUp, {

      "email" : email,
      "verifycode" : verifyCode,
    });
    return response.fold((l)=> l, (r)=> r);
  }
}