import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/connexion_two_screen/models/connexion_two_model.dart';
import 'package:flutter/material.dart';

class ConnexionTwoController extends GetxController {
  TextEditingController inputcontentController = TextEditingController();

  TextEditingController inputcontentOneController = TextEditingController();

  Rx<ConnexionTwoModel> connexionTwoModelObj = ConnexionTwoModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputcontentController.dispose();
    inputcontentOneController.dispose();
  }
}
