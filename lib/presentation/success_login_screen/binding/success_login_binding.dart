import '../controller/success_login_controller.dart';
import 'package:get/get.dart';

class SuccessLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessLoginController());
  }
}
