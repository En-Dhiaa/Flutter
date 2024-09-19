import 'package:market/core/class/data_management.dart';
import 'package:market/core/constant/link_api.dart';

class TestData{
  DataManagement dataManagement;
  TestData(this.dataManagement);
  
  getData() async{
    var response = await dataManagement.postData(AppLink.test, {});
  return response.fold((l)=> l, (r)=> r);
  }
}