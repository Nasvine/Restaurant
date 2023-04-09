import '../controller/verify_code_one_controller.dart';
import 'package:get/get.dart';

class VerifyCodeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyCodeOneController());
  }
}
