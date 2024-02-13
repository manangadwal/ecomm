import '../blog_post_screen/widgets/chipview2_item_widget.dart';
import '../blog_post_screen/widgets/slider1_item_widget.dart';
import 'controller/blog_post_controller.dart';
import 'models/chipview2_item_model.dart';
import 'models/slider1_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class BlogPostScreen extends GetWidget<BlogPostController> {
  const BlogPostScreen({Key? key})
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
            padding: EdgeInsets.only(top: 11.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle434221x375,
                  height: 221.v,
                  width: 375.h,
                ),
                SizedBox(height: 17.v),
                Text(
                  "msg_2021_style_guide3".tr.toUpperCase(),
                  style: CustomTextStyles.bodyMediumPrimary14,
                ),
                SizedBox(height: 16.v),
                _buildDescriptionRow(),
                SizedBox(height: 11.v),
                _buildSlider(),
                SizedBox(height: 14.v),
                Obx(
                  () => SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller
                          .blogPostModelObj.value.slider1ItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 5.1,
                        activeDotColor: appTheme.blueGray400,
                        dotHeight: 8.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 313.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 45.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_i_found_this".tr,
                            style: CustomTextStyles.bodyMediumff333333,
                          ),
                          TextSpan(
                            text: "msg_saint_laurent_canvas".tr,
                            style: CustomTextStyles.bodyMediumffdd8560,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "msg_posted_by_openfashion".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "lbl_3_days_ago".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildChipView(),
                SizedBox(height: 32.v),
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
    );
  }

  /// Section Widget
  Widget _buildDescriptionRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: 314.h,
              child: Text(
                "msg_you_guys_know_how".tr,
                maxLines: 9,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBluegray90014_3.copyWith(
                  height: 1.71,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmark,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 119.v,
              bottom: 80.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 450.v,
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
              controller.blogPostModelObj.value.slider1ItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            Slider1ItemModel model =
                controller.blogPostModelObj.value.slider1ItemList.value[index];
            return Slider1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Obx(
          () => Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(
              controller.blogPostModelObj.value.chipview2ItemList.value.length,
              (index) {
                Chipview2ItemModel model = controller
                    .blogPostModelObj.value.chipview2ItemList.value[index];

                return Chipview2ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter() {
    return Column(
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
    );
  }
}
