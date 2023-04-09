import 'controller/bienvenue_demo_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class BienvenueDemoOneScreen extends GetWidget<BienvenueDemoOneController> {
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(463),
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(44),
                                    width: getSize(44),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 24)),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapColumn();
                                        },
                                        child: Container(
                                            padding: getPadding(
                                                left: 29,
                                                top: 57,
                                                right: 29,
                                                bottom: 57),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgBaseemptystateillustration),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          311),
                                                      margin: getMargin(
                                                          left: 6, top: 2),
                                                      padding: getPadding(
                                                          left: 76,
                                                          top: 28,
                                                          right: 76,
                                                          bottom: 28),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup1),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVirtualassistant,
                                                                height:
                                                                    getVerticalSize(
                                                                        208),
                                                                width:
                                                                    getHorizontalSize(
                                                                        153),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            63))
                                                          ]))
                                                ]))))
                              ])),
                          Container(
                              width: getHorizontalSize(306),
                              margin: getMargin(left: 34, top: 6, right: 34),
                              child: Text("msg_hello_bienvenue".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtDMSansMedium22WhiteA700)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Text("msg_commandez_vos_repas".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMulishMedium16)),
                          Padding(
                              padding: getPadding(top: 24, bottom: 5),
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
                text: "lbl_suivant".tr,
                margin: getMargin(left: 24, right: 24, bottom: 66),
                onTap: onTapSuivant)));
  }

  onTapColumn() {
    Get.toNamed(AppRoutes.bienvenueDemoTwoScreen);
  }

  onTapSuivant() {
    Get.toNamed(AppRoutes.bienvenueDemoTwoScreen);
  }
}
