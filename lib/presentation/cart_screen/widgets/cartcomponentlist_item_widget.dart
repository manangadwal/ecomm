import '../controller/cart_controller.dart';
import '../models/cartcomponentlist_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartcomponentlistItemWidget extends StatelessWidget {
  CartcomponentlistItemWidget(
    this.cartcomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartcomponentlistItemModel cartcomponentlistItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: cartcomponentlistItemModelObj.userImage!.value,
            height: 133.v,
            width: 100.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  cartcomponentlistItemModelObj.titleText!.value,
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
              ),
              SizedBox(height: 10.v),
              Obx(
                () => Text(
                  cartcomponentlistItemModelObj.descriptionText!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.outlineGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusGray70024x24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Obx(
                      () => Text(
                        cartcomponentlistItemModelObj.quantityText!.value,
                        style: CustomTextStyles.bodyMediumPrimary14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlusGray700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Obx(
                () => Text(
                  cartcomponentlistItemModelObj.priceText!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
