import '../add_new_card_screen/widgets/userprofile2_item_widget.dart';
import 'controller/add_new_card_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/core/utils/validation_functions.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:bhawana_s_collection/widgets/custom_elevated_button.dart';
import 'package:bhawana_s_collection/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends GetWidget<AddNewCardController> {
  AddNewCardScreen({Key? key})
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
                      "lbl_payment_method".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 12.v),
                    _buildUserProfile(),
                    SizedBox(height: 13.v),
                    Obx(
                      () => SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.addNewCardModelObj.value
                              .userprofile2ItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: appTheme.gray5001,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildName(),
                    SizedBox(height: 34.v),
                    _buildCardNumber(),
                    SizedBox(height: 36.v),
                    _buildInput1(),
                    SizedBox(height: 34.v),
                    _buildCvv(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddCard(),
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
  Widget _buildUserProfile() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 190.v,
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
            .addNewCardModelObj.value.userprofile2ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Userprofile2ItemModel model = controller
              .addNewCardModelObj.value.userprofile2ItemList.value[index];
          return Userprofile2ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_name_on_card".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: controller.cardNumberController,
        hintText: "lbl_card_number".tr,
        textInputType: TextInputType.number,
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInput() {
    return CustomTextFormField(
      width: 165.h,
      controller: controller.inputController,
      hintText: "lbl_exp_month".tr,
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 164.h,
        controller: controller.dateController,
        hintText: "lbl_exp_date".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInput1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInput(),
          _buildDate(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: controller.cvvController,
        hintText: "lbl_cvv".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCard() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_add_card".tr.toUpperCase(),
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
