import 'package:get/get.dart';
import 'package:market/core/class/data_management.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(DataManagement());
  }

}