import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/mot_de_passe_oubli_screen/models/mot_de_passe_oubli_model.dart';
import 'package:flutter/material.dart';

class MotDePasseOubliController extends GetxController {
  TextEditingController inputcontentController = TextEditingController();

  Rx<MotDePasseOubliModel> motDePasseOubliModelObj = MotDePasseOubliModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputcontentController.dispose();
  }
}
