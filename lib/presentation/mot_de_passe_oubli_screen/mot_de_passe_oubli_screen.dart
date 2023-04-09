import 'controller/mot_de_passe_oubli_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/core/utils/validation_functions.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';
import 'package:restaurant_projet/widgets/custom_text_form_field.dart';

class MotDePasseOubliScreen extends GetWidget<MotDePasseOubliController> {
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
          padding: getPadding(
            bottom: 54,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0,
                0.5,
              ),
              end: Alignment(
                1,
                0.5,
              ),
              colors: [
                ColorConstant.blueGray800,
                ColorConstant.blueGray900,
                ColorConstant.blueGray800,
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 24,
                top: 74,
                right: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_mot_de_passe_oubli".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtDMSansMedium22,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img19b58c6687894,
                    height: getVerticalSize(
                      236,
                    ),
                    width: getHorizontalSize(
                      256,
                    ),
                    margin: getMargin(
                      top: 38,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 44,
                    ),
                    child: Text(
                      "msg_entrez_votre_email".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtDMSansRegular15,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.inputcontentController,
                    hintText: "lbl_email".tr,
                    margin: getMargin(
                      top: 45,
                      bottom: 5,
                    ),
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            54,
          ),
          text: "lbl_suivant".tr,
          margin: getMargin(
            left: 24,
            right: 24,
            bottom: 38,
          ),
        ),
      ),
    );
  }
}
