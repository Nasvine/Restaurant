import 'controller/connexion_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';
import 'package:restaurant_projet/domain/facebookauth/facebook_auth_helper.dart';

class ConnexionOneScreen extends GetWidget<ConnexionOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                              padding: getPadding(top: 95),
                              child: Text("msg_connectez_vous".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDMSansMedium26)),
                          Container(
                              width: getHorizontalSize(288),
                              margin: getMargin(left: 19, top: 19, right: 19),
                              child: Text("msg_cliquer_sur_le_bouton".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtMulishMedium16Bluegray50)),
                          CustomButton(
                              height: getVerticalSize(54),
                              text: "lbl_connexion".tr,
                              margin: getMargin(top: 56),
                              onTap: onTapConnexion),
                          CustomImageView(
                              svgPath: ImageConstant.imgBaselineandtext,
                              height: getVerticalSize(22),
                              width: getHorizontalSize(327),
                              margin: getMargin(top: 12)),
                          CustomButton(
                              height: getVerticalSize(54),
                              text: "msg_continue_with_facebook".tr,
                              margin: getMargin(top: 12),
                              variant: ButtonVariant.OutlineBluegray700,
                              padding: ButtonPadding.PaddingT16,
                              fontStyle:
                                  ButtonFontStyle.MulishSemiBold16Indigo50,
                              prefixWidget: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFacebook)),
                              onTap: onTapContinuewithfacebook),
                          CustomButton(
                              height: getVerticalSize(54),
                              text: "msg_continue_with_gmail".tr,
                              margin: getMargin(top: 12),
                              variant: ButtonVariant.OutlineBluegray700,
                              padding: ButtonPadding.PaddingT16,
                              fontStyle:
                                  ButtonFontStyle.MulishSemiBold16Indigo50,
                              prefixWidget: Container(
                                  margin: getMargin(right: 9),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle))),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapTxtInscrivezvous();
                              },
                              child: Padding(
                                  padding: getPadding(bottom: 54),
                                  child: Text("msg_inscrivez_vous".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMulishSemiBold16)))
                        ])))));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.bienvenueDemoTwoOneScreen);
  }

  onTapConnexion() {
    Get.toNamed(AppRoutes.connexionTwoScreen);
  }

  onTapContinuewithfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtInscrivezvous() {
    Get.toNamed(AppRoutes.inscriptionScreen);
  }
}
