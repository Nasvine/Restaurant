import 'controller/bienvenue_demo_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class BienvenueDemoTwoScreen extends GetWidget<BienvenueDemoTwoController> {
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
                    padding: getPadding(left: 24, right: 24),
                    child: Column(
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
                          CustomImageView(
                              imagePath: ImageConstant.img21a210907e7b4,
                              height: getVerticalSize(328),
                              width: getHorizontalSize(256),
                              margin: getMargin(top: 41)),
                          Padding(
                              padding: getPadding(top: 41),
                              child: Text("msg_livraison_rapide".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium26)),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("msg_nous_vous_livrons".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMulishMedium16)),
                          Container(
                              margin: getMargin(
                                  left: 118, top: 33, right: 118, bottom: 5),
                              padding: getPadding(left: 30, right: 30),
                              decoration: AppDecoration.fillBluegray700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(6),
                                        width: getHorizontalSize(30),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.orange400,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(3))))
                                  ]))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(54),
                text: "lbl_suivant".tr,
                margin: getMargin(left: 24, right: 24, bottom: 38),
                onTap: onTapSuivant)));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.bienvenueDemoOneScreen);
  }

  onTapSuivant() {
    Get.toNamed(AppRoutes.bienvenueDemoTwoOneScreen);
  }
}
