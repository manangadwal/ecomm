import '../home_page_screen/widgets/ninetyone_item_widget.dart';
import '../home_page_screen/widgets/product_item_widget.dart';
import '../home_page_screen/widgets/productcard_item_widget.dart';
import '../home_page_screen/widgets/username_item_widget.dart';
import 'controller/home_page_controller.dart';
import 'models/ninetyone_item_model.dart';
import 'models/product_item_model.dart';
import 'models/productcard_item_model.dart';
import 'models/username_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:bhawana_s_collection/widgets/custom_elevated_button.dart';
import 'package:bhawana_s_collection/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBanner(),
                SizedBox(height: 44.v),
                Text(
                  "lbl_new_arrival".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLarge18_1,
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.img3,
                  height: 9.v,
                  width: 124.h,
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "lbl_all".tr,
                          style: CustomTextStyles.bodyMediumGray90004,
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 26.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_apparel".tr,
                            style: CustomTextStyles.bodyMediumBluegray40014_1,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 28.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_dress".tr,
                            style: CustomTextStyles.bodyMediumBluegray40014_1,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 26.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_tshirt".tr,
                            style: CustomTextStyles.bodyMediumBluegray40014_1,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 23.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_bag".tr,
                            style: CustomTextStyles.bodyMediumBluegray40014_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle327,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 49.h),
                ),
                SizedBox(height: 16.v),
                _buildProductCard(),
                SizedBox(height: 44.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_explore_more".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ],
                ),
                SizedBox(height: 50.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBrand,
                  height: 180.v,
                  width: 375.h,
                ),
                SizedBox(height: 55.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 93.h),
                    child: Text(
                      "lbl_collections".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildFrameTwo(),
                SizedBox(height: 40.v),
                SizedBox(
                  height: 296.v,
                  width: 260.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 296.v,
                        width: 260.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 83.h,
                            top: 31.v,
                            right: 22.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Opacity(
                                opacity: 0.8,
                                child: Text(
                                  "lbl_autumn".tr,
                                  style:
                                      CustomTextStyles.displayMediumBluegray900,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text(
                                    "lbl_collection".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles.bodySmallBluegray90011,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.v),
                _buildSixteen(),
                SizedBox(height: 80.v),
                Text(
                  "lbl_just_for_you".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLarge18_1,
                ),
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.img3,
                  height: 9.v,
                  width: 124.h,
                ),
                SizedBox(height: 23.v),
                _buildProduct(),
                SizedBox(height: 19.v),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseBlueGray400,
                  height: 8.v,
                  width: 34.h,
                ),
                SizedBox(height: 73.v),
                Text(
                  "lbl_trending".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLarge18_1,
                ),
                SizedBox(height: 16.v),
                _buildNinetyOne(),
                SizedBox(height: 36.v),
                _buildOpenfashion(),
                SizedBox(height: 41.v),
                Text(
                  "lbl_follow_us".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLarge18_1,
                ),
                SizedBox(height: 11.v),
                CustomImageView(
                  imagePath: ImageConstant.imgInstagram,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 18.v),
                _buildUserName(),
                SizedBox(height: 35.v),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgSettings,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 24.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 24.v,
            right: 35.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBanner() {
    return SizedBox(
      height: 600.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 600.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 36.h,
                right: 21.h,
                bottom: 18.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 136.v,
                    width: 316.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Opacity(
                            opacity: 0.7,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_luxury".tr.toUpperCase(),
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl2".tr.toUpperCase(),
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Opacity(
                            opacity: 0.7,
                            child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text(
                                "lbl_fashion".tr.toUpperCase(),
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Opacity(
                            opacity: 0.7,
                            child: Text(
                              "lbl_accessories".tr.toUpperCase(),
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 159.v),
                  CustomElevatedButton(
                    text: "msg_explore_collection".tr.toUpperCase(),
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 39.h,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 8.v,
                    width: 40.h,
                    margin: EdgeInsets.only(left: 130.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 257.v,
            crossAxisCount: 2,
            mainAxisSpacing: 13.h,
            crossAxisSpacing: 13.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .homePageModelObj.value.productcardItemList.value.length,
          itemBuilder: (context, index) {
            ProductcardItemModel model = controller
                .homePageModelObj.value.productcardItemList.value[index];
            return ProductcardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwo() {
    return SizedBox(
      height: 240.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 240.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 222.v,
              width: 184.h,
              margin: EdgeInsets.only(right: 8.h),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_10".tr,
                        style: CustomTextStyles.bodoniModa28ptBluegray900,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Text(
                        "lbl_october".tr,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 11.h,
                        bottom: 74.v,
                      ),
                      child: Text(
                        "lbl_collection".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallGray5001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen() {
    return SizedBox(
      height: 176.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12175x375,
            height: 175.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 163.h,
                vertical: 67.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8.v),
                  CustomIconButton(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgOverflowMenu,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProduct() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 387.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount:
              controller.homePageModelObj.value.productItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            ProductItemModel model =
                controller.homePageModelObj.value.productItemList.value[index];
            return ProductItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return Obx(
      () => Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
          controller.homePageModelObj.value.ninetyoneItemList.value.length,
          (index) {
            NinetyoneItemModel model = controller
                .homePageModelObj.value.ninetyoneItemList.value[index];

            return NinetyoneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOpenfashion() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray10001,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 38.v,
            width: 97.h,
          ),
          SizedBox(height: 17.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(
              left: 39.h,
              right: 38.h,
            ),
            child: Text(
              "msg_making_a_luxurious".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray70014.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img3,
            height: 9.v,
            width: 124.h,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 19.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMiroodlesSticker,
                        height: 34.v,
                        width: 49.h,
                      ),
                      SizedBox(height: 13.v),
                      SizedBox(
                        width: 138.h,
                        child: Text(
                          "msg_fast_shipping_free".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMiroodlesSticker36x52,
                        height: 36.v,
                        width: 52.h,
                        margin: EdgeInsets.only(left: 31.h),
                      ),
                      SizedBox(height: 10.v),
                      SizedBox(
                        width: 124.h,
                        child: Text(
                          "msg_sustainable_process".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMiroodlesSticker38x54,
                      height: 38.v,
                      width: 54.h,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 165.h,
                      child: Text(
                        "msg_unique_designs_and".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumGray700.copyWith(
                          height: 1.54,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMiroodlesSticker1,
                      height: 38.v,
                      width: 54.h,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 153.h,
                      child: Text(
                        "msg_fast_shipping_free2".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumGray700.copyWith(
                          height: 1.54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          CustomImageView(
            imagePath: ImageConstant.imgMaximize,
            height: 39.v,
            width: 66.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 165.v,
            crossAxisCount: 2,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.homePageModelObj.value.usernameItemList.value.length,
          itemBuilder: (context, index) {
            UsernameItemModel model =
                controller.homePageModelObj.value.usernameItemList.value[index];
            return UsernameItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter() {
    return Container(
      decoration: AppDecoration.fillOnError,
      child: Column(
        children: [
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 106.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTwitterBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInstagramBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgYoutube,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.img3,
            height: 9.v,
            width: 124.h,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 184.h,
            child: Text(
              "msg_support_openui_design_60".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                height: 1.84,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          CustomImageView(
            imagePath: ImageConstant.img3,
            height: 9.v,
            width: 124.h,
          ),
          SizedBox(height: 33.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 58.h,
                right: 70.h,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_about".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Spacer(
                    flex: 49,
                  ),
                  Text(
                    "lbl_contact".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Text(
                    "lbl_blog".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 68.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray400,
            child: Text(
              "msg_copyright_openui".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
