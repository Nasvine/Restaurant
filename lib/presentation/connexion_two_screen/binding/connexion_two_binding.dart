import '../controller/connexion_two_controller.dart';
import 'package:get/get.dart';

class ConnexionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnexionTwoController());
  }
}
