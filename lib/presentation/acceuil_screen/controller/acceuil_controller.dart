import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/acceuil_screen/models/acceuil_model.dart';

class AcceuilController extends GetxController {
  Rx<AcceuilModel> acceuilModelObj = AcceuilModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
