import 'controller/verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class VerifyCodeScreen extends GetWidget<VerifyCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 24,
              top: 16,
              right: 24,
              bottom: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgArrowright,
                  height: getSize(
                    44,
                  ),
                  width: getSize(
                    44,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Text(
                    "msg_empreinte_digitale".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtDMSansMedium22,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Text(
                    "msg_ajouter_une_empreinte".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMulishRomanMedium16Bluegray501,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img19b58c66878942,
                  height: getVerticalSize(
                    236,
                  ),
                  width: getHorizontalSize(
                    256,
                  ),
                  margin: getMargin(
                    top: 13,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    253,
                  ),
                  margin: getMargin(
                    left: 35,
                    top: 27,
                    right: 38,
                    bottom: 5,
                  ),
                  child: Text(
                    "msg_positionner_votre".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtMulishRomanSemiBold15,
                  ),
                ),
              ],
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
