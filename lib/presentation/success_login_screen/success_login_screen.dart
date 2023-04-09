import 'controller/success_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class SuccessLoginScreen extends GetWidget<SuccessLoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 50, top: 71, right: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_f_licitation".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtDMSansMedium22),
                          CustomImageView(
                              imagePath: ImageConstant.img19b58c66878941,
                              height: getVerticalSize(236),
                              width: getHorizontalSize(256),
                              margin: getMargin(top: 41)),
                          Padding(
                              padding: getPadding(top: 46, bottom: 5),
                              child: Text("msg_votre_profile_s_est".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansRegular15))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(54),
                text: "lbl_suivant".tr,
                margin: getMargin(left: 24, right: 24, bottom: 38),
                onTap: onTapSuivant)));
  }

  onTapSuivant() {
    Get.toNamed(AppRoutes.acceuilScreen);
  }
}
