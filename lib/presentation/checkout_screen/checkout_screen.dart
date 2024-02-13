import 'controller/checkout_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:bhawana_s_collection/widgets/custom_drop_down.dart';
import 'package:bhawana_s_collection/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckoutScreen extends GetWidget<CheckoutController> {
  const CheckoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 42.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_checkout".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLarge18_1,
                ),
              ),
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.img3,
                height: 9.v,
                width: 124.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 16.v),
              Text(
                "lbl_shipping_adress".tr.toUpperCase(),
                style: CustomTextStyles.bodyMediumBluegray40014,
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "lbl_iris_watson".tr,
                  style: CustomTextStyles.bodyLargePrimaryContainer,
                ),
              ),
              SizedBox(height: 6.v),
              _buildCheckoutRow(),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "lbl_786_713_8616".tr,
                  style: CustomTextStyles.bodyMediumGray70014_1,
                ),
              ),
              SizedBox(height: 12.v),
              CustomTextFormField(
                controller: controller.plusController,
                hintText: "msg_add_shipping_adress".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlusPrimary,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray50,
              ),
              SizedBox(height: 35.v),
              Text(
                "lbl_shipping_method".tr.toUpperCase(),
                style: CustomTextStyles.bodyMediumBluegray40014,
              ),
              SizedBox(height: 11.v),
              _buildShippingMethodRow(),
              SizedBox(height: 35.v),
              Text(
                "lbl_payment_method".tr.toUpperCase(),
                style: CustomTextStyles.bodyMediumBluegray40014,
              ),
              SizedBox(height: 11.v),
              CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray9001,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                hintText: "msg_select_payment_method".tr,
                hintStyle: CustomTextStyles.bodyLargeGray700_1,
                items:
                    controller.checkoutModelObj.value.dropdownItemList!.value,
                contentPadding: EdgeInsets.only(
                  left: 20.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
                borderDecoration: DropDownStyleHelper.fillGrayTL24,
                fillColor: appTheme.gray50,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
              Spacer(),
              SizedBox(height: 9.v),
              _buildTotalRow(),
            ],
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
  Widget _buildCheckoutRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 22.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 196.h,
              child: Text(
                "msg_606_3727_ullamcorper".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                  height: 1.57,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray900,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                left: 86.h,
                top: 11.v,
                bottom: 12.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingMethodRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_pickup_at_store".tr,
              style: CustomTextStyles.bodyLargeGray700_1,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Text(
              "lbl_free".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumGray70014_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlueGray9001,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 21.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "lbl_total".tr.toUpperCase(),
            style: CustomTextStyles.bodyMediumBluegray90014_4,
          ),
        ),
        Text(
          "lbl_240".tr.toUpperCase(),
          style: CustomTextStyles.bodyLargeRed300_1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 106.h,
        right: 106.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBagGray5001,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "lbl_place_order".tr.toUpperCase(),
              style: CustomTextStyles.bodyLargeGray5001,
            ),
          ),
        ],
      ),
    );
  }
}
