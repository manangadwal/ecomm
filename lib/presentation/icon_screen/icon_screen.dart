import '../icon_screen/widgets/icon_item_widget.dart';
import 'controller/icon_controller.dart';
import 'models/icon_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

class IconScreen extends GetWidget<IconController> {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 614.h,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildQrcode(),
                      SizedBox(height: 30.v),
                      _buildIcon()
                    ]))));
  }

  /// Section Widget
  Widget _buildQrcode() {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgBag,
              height: 24.adaptSize,
              width: 24.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgPlusPrimary20x20,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h),
              onTap: () {
                onTapImgArrowLeft();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgArrowDownGray9000124x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgFavoriteGray90001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgRewind,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgMegaphone,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgCloseGray90001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgDoorToDoorDeliveryPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgSortGray90001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h),
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        child: CircularProgressIndicator(
                            value: 0.5, strokeWidth: 1.h))),
                CustomImageView(
                    imagePath: ImageConstant.imgBackGray90001,
                    height: 7.v,
                    width: 8.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 2.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgVectorGray90001,
                    height: 6.v,
                    width: 7.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 3.v))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgCallGray90001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h)),
          CustomImageView(
              imagePath: ImageConstant.imgLinkedinGray90001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 19.h))
        ]));
  }

  /// Section Widget
  Widget _buildIcon() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 25.v,
                    crossAxisCount: 13,
                    mainAxisSpacing: 19.h,
                    crossAxisSpacing: 19.h),
                physics: BouncingScrollPhysics(),
                itemCount:
                    controller.iconModelObj.value.iconItemList.value.length,
                itemBuilder: (context, index) {
                  IconItemModel model =
                      controller.iconModelObj.value.iconItemList.value[index];
                  return IconItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
