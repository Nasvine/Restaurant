import '../controller/mot_de_passe_oubli_controller.dart';
import 'package:get/get.dart';

class MotDePasseOubliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MotDePasseOubliController());
  }
}
