import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_one_screen/models/bienvenue_demo_one_model.dart';

class BienvenueDemoOneController extends GetxController {
  Rx<BienvenueDemoOneModel> bienvenueDemoOneModelObj =
      BienvenueDemoOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
