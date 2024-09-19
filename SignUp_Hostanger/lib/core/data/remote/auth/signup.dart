import 'package:market/core/class/data_management.dart';
import 'package:market/core/constant/link_api.dart';

class SignUpData{
  DataManagement dataManagement;
  SignUpData(this.dataManagement);

  postData(String username ,String password ,String email ,String phone) async{
    var response = await dataManagement.postData(AppLink.signup, {
      "username": username,
      "password" : password,
      "email" : email,
      "phone" : phone,
    });
    return response.fold((l)=> l, (r)=> r);
  }
}