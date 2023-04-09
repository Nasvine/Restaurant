import '../controller/bienvenue_demo_two_one_controller.dart';
import 'package:get/get.dart';

class BienvenueDemoTwoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BienvenueDemoTwoOneController());
  }
}
