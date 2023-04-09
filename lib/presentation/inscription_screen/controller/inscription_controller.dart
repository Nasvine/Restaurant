import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/presentation/inscription_screen/models/inscription_model.dart';
import 'package:flutter/material.dart';

class InscriptionController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<InscriptionModel> inscriptionModelObj = InscriptionModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
