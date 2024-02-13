import '../blog_grid_view_page/widgets/post_item_widget.dart';
import 'controller/blog_grid_view_controller.dart';
import 'models/blog_grid_view_model.dart';
import 'models/post_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BlogGridViewPage extends StatelessWidget {
  BlogGridViewPage({Key? key})
      : super(
          key: key,
        );

  BlogGridViewController controller =
      Get.put(BlogGridViewController(BlogGridViewModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Column(
                  children: [
                    _buildPost(),
                    SizedBox(height: 34.v),
                    _buildFooter(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPost() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 28.v,
            );
          },
          itemCount:
              controller.blogGridViewModelObj.value.postItemList.value.length,
          itemBuilder: (context, index) {
            PostItemModel model =
                controller.blogGridViewModelObj.value.postItemList.value[index];
            return PostItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCopyrightButton() {
    return CustomElevatedButton(
      height: 45.v,
      width: 375.h,
      text: "msg_copyright_openui".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodySmall!,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildFooter() {
    return SizedBox(
      height: 340.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 58.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillOnError,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
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
                  Container(
                    width: 184.h,
                    margin: EdgeInsets.only(
                      left: 37.h,
                      right: 38.h,
                    ),
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
                  SizedBox(height: 21.v),
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 9.v,
                    width: 124.h,
                  ),
                  SizedBox(height: 34.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_about".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            "lbl_contact".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            "lbl_blog".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 46.v),
                ],
              ),
            ),
          ),
          _buildCopyrightButton(),
        ],
      ),
    );
  }
}
