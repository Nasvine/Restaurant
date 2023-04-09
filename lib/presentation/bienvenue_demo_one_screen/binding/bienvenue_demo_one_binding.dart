import '../controller/bienvenue_demo_one_controller.dart';
import 'package:get/get.dart';

class BienvenueDemoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BienvenueDemoOneController());
  }
}
