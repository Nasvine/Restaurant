import '../controller/acceuil_controller.dart';
import 'package:get/get.dart';

class AcceuilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceuilController());
  }
}
