import 'controller/add_new_address_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/core/utils/validation_functions.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:bhawana_s_collection/widgets/custom_elevated_button.dart';
import 'package:bhawana_s_collection/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  AddNewAddressScreen({Key? key})
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
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 42.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_add_shipping_adress".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 40.v),
                    _buildFirstName(),
                    SizedBox(height: 35.v),
                    _buildAddressEditText(),
                    SizedBox(height: 37.v),
                    _buildCityEditText(),
                    SizedBox(height: 34.v),
                    _buildZipcode(),
                    SizedBox(height: 35.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_phone_number".tr,
                        style: CustomTextStyles.bodyMediumGray500,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Divider(
                      color: appTheme.blueGray100,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddNowButton(),
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
  Widget _buildFirstNameEditText() {
    return CustomTextFormField(
      width: 165.h,
      controller: controller.firstNameEditTextController,
      hintText: "lbl_first_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.lastNameEditTextController,
      hintText: "lbl_last_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFirstNameEditText(),
        _buildLastNameEditText(),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddressEditText() {
    return CustomTextFormField(
      controller: controller.addressEditTextController,
      hintText: "lbl_adress".tr,
    );
  }

  /// Section Widget
  Widget _buildCityEditText() {
    return CustomTextFormField(
      controller: controller.cityEditTextController,
      hintText: "lbl_city".tr,
    );
  }

  /// Section Widget
  Widget _buildZipcodeEditText() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.zipcodeEditTextController,
      hintText: "lbl_zip_code".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.number,
      validator: (value) {
        if (!isNumeric(value)) {
          return "err_msg_please_enter_valid_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_state".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
            SizedBox(height: 16.v),
            SizedBox(
              width: 165.h,
              child: Divider(
                color: appTheme.blueGray100,
              ),
            ),
          ],
        ),
        _buildZipcodeEditText(),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddNowButton() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_add_now".tr.toUpperCase(),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 24.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgPlusPrimary20x20,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodyLargeGray5001,
    );
  }
}
