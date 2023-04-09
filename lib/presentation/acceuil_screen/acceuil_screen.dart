import '../acceuil_screen/widgets/acceuil_item_widget.dart';
import 'controller/acceuil_controller.dart';
import 'models/acceuil_item_model.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_projet/core/app_export.dart';
import 'package:restaurant_projet/widgets/app_bar/appbar_image.dart';
import 'package:restaurant_projet/widgets/app_bar/custom_app_bar.dart';
import 'package:restaurant_projet/widgets/custom_button.dart';

class AcceuilScreen extends GetWidget<AcceuilController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          leadingWidth: 44,
          leading: AppbarImage(
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            svgPath: ImageConstant.imgLocation,
            margin: getMargin(
              left: 24,
              top: 18,
              bottom: 18,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 7,
            ),
            child: Text(
              "lbl_vine_restaurant".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMulishSemiBold16Gray300,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 24,
                top: 16,
                right: 24,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            top: 56,
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
              right: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    323,
                  ),
                  margin: getMargin(
                    top: 7,
                  ),
                  child: Text(
                    "msg_nous_pensons_que".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtDMSansMedium22WhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        height: getVerticalSize(
                          44,
                        ),
                        width: getHorizontalSize(
                          82,
                        ),
                        text: "lbl_plat".tr,
                        variant: ButtonVariant.FillOrange400,
                        padding: ButtonPadding.PaddingAll11,
                        fontStyle: ButtonFontStyle.MulishRomanBold16,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 11,
                          bottom: 11,
                        ),
                        child: Text(
                          "lbl_boissons".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 27,
                          top: 11,
                          bottom: 11,
                        ),
                        child: Text(
                          "lbl_dessert".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 22,
                        ),
                        child: SizedBox(
                          height: getVerticalSize(
                            43,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.blueGray600,
                            indent: getHorizontalSize(
                              9,
                            ),
                            endIndent: getHorizontalSize(
                              9,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgMenuBlueGray700,
                        height: getSize(
                          44,
                        ),
                        width: getSize(
                          44,
                        ),
                        margin: getMargin(
                          left: 9,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: controller
                          .acceuilModelObj.value.acceuilItemList.length,
                      itemBuilder: (context, index) {
                        AcceuilItemModel model = controller
                            .acceuilModelObj.value.acceuilItemList[index];
                        return AcceuilItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
