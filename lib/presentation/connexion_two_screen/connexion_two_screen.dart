import 'controller/connexion_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/core/utils/validation_functions.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';
import 'package:restaurant_projet/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ConnexionTwoScreen extends GetWidget<ConnexionTwoController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0.5),
                        end: Alignment(1, 0.5),
                        colors: [
                      ColorConstant.blueGray800,
                      ColorConstant.blueGray900,
                      ColorConstant.blueGray800
                    ])),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: getPadding(left: 24, right: 24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(44),
                                  width: getSize(44),
                                  alignment: Alignment.centerLeft,
                                  onTap: () {
                                    onTapImgArrowright();
                                  }),
                              Padding(
                                  padding: getPadding(top: 71),
                                  child: Text("msg_connectez_vous_ici".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtDMSansMedium22)),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_entrez_vos_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMulishMedium16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.inputcontentController,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(top: 41),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Obx(() => CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.inputcontentOneController,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 40),
                                  padding: TextFormFieldPadding.PaddingT18_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 17,
                                              right: 16,
                                              bottom: 17),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgRightIcon
                                                  : ImageConstant
                                                      .imgRightIcon))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword.value)),
                              CustomButton(
                                  height: getVerticalSize(54),
                                  text: "lbl_connexion".tr,
                                  margin: getMargin(top: 40, bottom: 5),
                                  onTap: onTapConnexion)
                            ]))))));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.connexionOneScreen);
  }

  onTapConnexion() {
    Get.toNamed(AppRoutes.successLoginScreen);
  }
}
