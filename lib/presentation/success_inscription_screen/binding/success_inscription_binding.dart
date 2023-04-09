import '../controller/success_inscription_controller.dart';
import 'package:get/get.dart';

class SuccessInscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessInscriptionController());
  }
}
