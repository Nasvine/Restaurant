import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_two_screen/models/bienvenue_demo_two_model.dart';

class BienvenueDemoTwoController extends GetxController {
  Rx<BienvenueDemoTwoModel> bienvenueDemoTwoModelObj =
      BienvenueDemoTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
