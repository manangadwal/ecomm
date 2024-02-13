import 'controller/our_story_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/core/utils/validation_functions.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:bhawana_s_collection/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OurStoryScreen extends GetWidget<OurStoryController> {
  OurStoryScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 375.h,
                padding: EdgeInsets.symmetric(vertical: 42.v),
                child: Column(
                  children: [
                    Text(
                      "lbl_our_story".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 338.h,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 21.h,
                      ),
                      child: Text(
                        "msg_open_fashion_free".tr,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 238.v,
                      width: 375.h,
                    ),
                    SizedBox(height: 55.v),
                    Text(
                      "lbl_sign_up".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 286.h,
                      margin: EdgeInsets.only(
                        left: 43.h,
                        right: 45.h,
                      ),
                      child: Text(
                        "msg_receive_early_access".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                          height: 1.57,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 17.h,
                      ),
                      child: CustomTextFormField(
                        controller: controller.emailController,
                        hintText: "lbl_email_adress".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildButton(),
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
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 136.h,
        right: 136.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "lbl_submit2".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumGray5001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftGray50,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 24.h),
          ),
        ],
      ),
    );
  }
}
