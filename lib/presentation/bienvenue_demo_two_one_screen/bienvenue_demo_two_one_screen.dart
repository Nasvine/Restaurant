import 'controller/bienvenue_demo_two_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class BienvenueDemoTwoOneScreen
    extends GetWidget<BienvenueDemoTwoOneController> {
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
                          Spacer(),
                          CustomImageView(
                              imagePath: ImageConstant.img19b58c6687894236x256,
                              height: getVerticalSize(236),
                              width: getHorizontalSize(256)),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("msg_diff_rents_repas".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium26)),
                          Container(
                              width: getHorizontalSize(320),
                              margin: getMargin(left: 3, top: 16, right: 3),
                              child: Text("msg_nous_pr_parons_les".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtMulishMedium16Bluegray50)),
                          Padding(
                              padding: getPadding(top: 35, bottom: 128),
                              child: Container(
                                  height: getVerticalSize(6),
                                  width: getHorizontalSize(90),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blueGray700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3))),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3)),
                                      child: LinearProgressIndicator(
                                          value: 0.33,
                                          backgroundColor:
                                              ColorConstant.blueGray700,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  ColorConstant.orange400)))))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(54),
                text: "lbl_commencer".tr,
                margin: getMargin(left: 24, right: 24, bottom: 38),
                onTap: onTapCommencer)));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.bienvenueDemoTwoScreen);
  }

  onTapCommencer() {
    Get.toNamed(AppRoutes.connexionOneScreen);
  }
}
