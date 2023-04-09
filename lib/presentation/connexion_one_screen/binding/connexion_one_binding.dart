import '../controller/connexion_one_controller.dart';
import 'package:get/get.dart';

class ConnexionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnexionOneController());
  }
}
