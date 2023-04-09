import '../controller/bienvenue_demo_two_controller.dart';
import 'package:get/get.dart';

class BienvenueDemoTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BienvenueDemoTwoController());
  }
}
