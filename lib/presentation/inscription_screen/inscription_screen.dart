import 'controller/inscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/core/utils/validation_functions.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';
import 'package:restaurant_projet/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InscriptionScreen extends GetWidget<InscriptionController> {
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
                padding: getPadding(bottom: 54),
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
                        padding: getPadding(left: 24, top: 75, right: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_inscription".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium22),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(top: 38),
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
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 40),
                                  padding: TextFormFieldPadding.PaddingT18_1,
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
                              Obx(() => CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.confirmpasswordController,
                                  hintText: "msg_confirmer_password".tr,
                                  margin: getMargin(top: 40),
                                  padding: TextFormFieldPadding.PaddingT18_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword1.value =
                                            !controller.isShowPassword1.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 17,
                                              right: 16,
                                              bottom: 17),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword1.value
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
                                      !controller.isShowPassword1.value)),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtVousavezdjun();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 46, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_vous_avez_d_j_un2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_se_connecter".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.orange400,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight:
                                                        FontWeight.w700))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(54),
                text: "lbl_s_inscrire".tr,
                margin: getMargin(left: 24, right: 24, bottom: 38),
                onTap: onTapSinscrire)));
  }

  onTapTxtVousavezdjun() {
    Get.toNamed(AppRoutes.connexionTwoScreen);
  }

  onTapSinscrire() {
    Get.toNamed(AppRoutes.successInscriptionScreen);
  }
}
