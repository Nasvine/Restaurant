import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:restaurant_projet/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(418),
                              width: getHorizontalSize(248),
                              padding: getPadding(top: 90),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgPicture),
                                      fit: BoxFit.cover)),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFoodpicture,
                                    height: getVerticalSize(200),
                                    width: getHorizontalSize(120),
                                    alignment: Alignment.topLeft)
                              ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(375),
                                  width: getHorizontalSize(336),
                                  margin: getMargin(top: 19),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(375),
                                                width: getHorizontalSize(248),
                                                padding: getPadding(
                                                    top: 47, bottom: 47),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(ImageConstant
                                                            .imgPictureRed100),
                                                        fit: BoxFit.cover)),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFoodpicture200x120,
                                                      height:
                                                          getVerticalSize(200),
                                                      width: getHorizontalSize(
                                                          120),
                                                      alignment:
                                                          Alignment.bottomRight)
                                                ]))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                width: getHorizontalSize(135),
                                                margin: getMargin(bottom: 24),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_eat".tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray50,
                                                              fontSize:
                                                                  getFontSize(
                                                                      60),
                                                              fontFamily:
                                                                  'Mulish',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text: "lbl_easy".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .yellow900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      60),
                                                              fontFamily:
                                                                  'Mulish',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ])))
                        ])))));
  }
}
