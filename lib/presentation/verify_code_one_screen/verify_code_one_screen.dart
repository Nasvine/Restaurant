import 'controller/verify_code_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class VerifyCodeOneScreen extends GetWidget<VerifyCodeOneController> {
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
                    top: 11,
                  ),
                  child: Text(
                    "msg_code_de_verification".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtDMSansMedium22,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    296,
                  ),
                  margin: getMargin(
                    left: 15,
                    top: 19,
                    right: 15,
                  ),
                  child: Text(
                    "msg_nous_venons_d_envoyer".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtMulishRomanMedium16Bluegray50,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 40,
                    right: 12,
                  ),
                  child: Obx(
                    () => PinCodeTextField(
                      appContext: context,
                      controller: controller.otpController.value,
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {},
                      textStyle: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                      pinTheme: PinTheme(
                        fieldHeight: getHorizontalSize(
                          54,
                        ),
                        fieldWidth: getHorizontalSize(
                          54,
                        ),
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16,
                          ),
                        ),
                        selectedFillColor: ColorConstant.blueGray7004c,
                        activeFillColor: ColorConstant.blueGray7004c,
                        inactiveFillColor: ColorConstant.blueGray7004c,
                        inactiveColor: ColorConstant.blueGray600,
                        selectedColor: ColorConstant.blueGray600,
                        activeColor: ColorConstant.blueGray600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                    bottom: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_vous_n_avez_pas2".tr,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "msg_renvoyer_le_code".tr,
                          style: TextStyle(
                            color: ColorConstant.orange400,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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
