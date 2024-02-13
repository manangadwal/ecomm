import '../product_detail_screen/widgets/slider_item_widget.dart';
import '../product_detail_screen/widgets/userprofile_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/slider_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends GetWidget<ProductDetailController> {
  const ProductDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSlider(),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.productDetailModelObj.value
                              .sliderItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 6,
                            activeDotColor: appTheme.blueGray400,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildUserProfile(),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "msg_recycle_boucle_knit".tr,
                      style: CustomTextStyles.bodyLargeGray700_1,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "lbl_120".tr,
                      style: CustomTextStyles.bodyLargeRed300,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 82.h,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "lbl_color".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          height: 22.v,
                          margin: EdgeInsets.only(left: 8.h),
                          child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 3,
                            effect: ScrollingDotsEffect(
                              spacing: 12,
                              dotColor: appTheme.red300,
                              activeDotScale: 1.375,
                              dotHeight: 16.v,
                              dotWidth: 16.h,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Text(
                            "lbl_size".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 15.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_s".tr,
                            style: CustomTextStyles.bodySmallGray50,
                          ),
                        ),
                        Container(
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_m".tr,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                        Container(
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_l".tr,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildButton(),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_materials".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 326.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 28.h,
                      ),
                      child: Text(
                        "msg_we_work_with_monitoring".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_care".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 333.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "msg_to_keep_your_jackets".tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildDoNotTumbleDry(
                      image: ImageConstant.imgDoNotBleach,
                      text: "msg_do_not_use_bleach".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildDoNotTumbleDry(
                      image: ImageConstant.imgDoNotTumbleDry,
                      text: "msg_do_not_tumble_dry".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 90.h,
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgDoNotWash,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "msg_dry_clean_with".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 91.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIronLowTemperature,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            top: 2.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg_iron_at_a_maximum".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_care".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildShipping(),
                  SizedBox(height: 4.v),
                  Container(
                    width: 194.h,
                    margin: EdgeInsets.only(left: 52.h),
                    child: Text(
                      "msg_estimated_to_be".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                        height: 1.71,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Divider(
                        color: appTheme.gray700.withOpacity(0.42),
                        indent: 52.h,
                        endIndent: 16.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildCodPolicy(),
                  SizedBox(height: 7.v),
                  Opacity(
                    opacity: 0.2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Divider(
                        color: appTheme.gray700.withOpacity(0.42),
                        indent: 52.h,
                        endIndent: 16.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildReturnPolicy(),
                  SizedBox(height: 78.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_you_may_also_like".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 9.v,
                    width: 124.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 19.v),
                  _buildUserProfile1(),
                  SizedBox(height: 40.v),
                  _buildFooter(),
                ],
              ),
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
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildSlider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 460.v,
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
          itemCount: controller
              .productDetailModelObj.value.sliderItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model = controller
                .productDetailModelObj.value.sliderItemList.value[index];
            return SliderItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                "lbl_mohan".tr.toUpperCase(),
                style: CustomTextStyles.bodyLarge_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgTwitter,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 6.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlusGray5001,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_add_to_basket".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumGray5001,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavoriteGray50,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              right: 18.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShipping() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShipping,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 5.v,
                bottom: 2.v,
              ),
              child: Text(
                "msg_free_flat_rate_shipping".tr,
                style: CustomTextStyles.bodyMediumPrimary14,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowUp,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCodPolicy() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgSort,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 5.v,
              ),
              child: Text(
                "lbl_cod_policy".tr,
                style: CustomTextStyles.bodyMediumPrimary14,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDownGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReturnPolicy() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          strokeWidth: 1.h,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBack,
                      height: 6.v,
                      width: 7.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 5.v,
                      width: 6.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 5.v,
              ),
              child: Text(
                "lbl_return_policy".tr,
                style: CustomTextStyles.bodyMediumPrimary14,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDownGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 282.v,
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .productDetailModelObj.value.userprofileItemList.value.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model = controller
                  .productDetailModelObj.value.userprofileItemList.value[index];
              return UserprofileItemWidget(
                model,
              );
            },
          ),
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

  /// Common widget
  Widget _buildDoNotTumbleDry({
    required String image,
    required String text,
  }) {
    return Row(
      children: [
        Opacity(
          opacity: 0.5,
          child: CustomImageView(
            imagePath: image,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 4.v,
            bottom: 2.v,
          ),
          child: Text(
            text,
            style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
      ],
    );
  }
}
