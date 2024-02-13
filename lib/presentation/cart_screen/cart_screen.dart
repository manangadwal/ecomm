import '../cart_screen/widgets/cartcomponentlist_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cartcomponentlist_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_cart".tr.toUpperCase(),
                style: CustomTextStyles.bodyLargeBluegray90018,
              ),
              SizedBox(height: 14.v),
              _buildCartComponentList(),
              SizedBox(height: 80.v),
              Opacity(
                opacity: 0.2,
                child: Divider(
                  color: theme.colorScheme.primary.withOpacity(0.42),
                ),
              ),
              SizedBox(height: 15.v),
              _buildSubTotalRow(),
              SizedBox(height: 18.v),
              Container(
                width: 297.h,
                margin: EdgeInsets.only(right: 45.h),
                child: Text(
                  "msg_shipping_charges".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonRow(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 375.h,
      leading: Container(
        height: 12.adaptSize,
        width: 12.adaptSize,
        margin: EdgeInsets.fromLTRB(22.h, 16.v, 341.h, 16.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector4,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector5,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCartComponentList() {
    return Padding(
      padding: EdgeInsets.only(right: 31.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller
              .cartModelObj.value.cartcomponentlistItemList.value.length,
          itemBuilder: (context, index) {
            CartcomponentlistItemModel model = controller
                .cartModelObj.value.cartcomponentlistItemList.value[index];
            return CartcomponentlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubTotalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_sub_total".tr.toUpperCase(),
            style: CustomTextStyles.bodyMediumBluegray90014,
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
  Widget _buildButtonRow() {
    return Container(
      margin: EdgeInsets.only(
        left: 123.h,
        right: 123.h,
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
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              "lbl_buy_now".tr.toUpperCase(),
              style: CustomTextStyles.bodyLargeGray5001,
            ),
          ),
        ],
      ),
    );
  }
}
