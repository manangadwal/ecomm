import '../controller/category_grid_view_controller.dart';
import '../models/product1_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product1ItemWidget extends StatelessWidget {
  Product1ItemWidget(
    this.product1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Product1ItemModel product1ItemModelObj;

  var controller = Get.find<CategoryGridViewController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220.v,
          width: 165.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: product1ItemModelObj.image1!.value,
                  height: 220.v,
                  width: 165.h,
                  alignment: Alignment.center,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 9.h,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Obx(
            () => Text(
              product1ItemModelObj.title!.value,
              style: CustomTextStyles.bodySmallPrimary_1,
            ),
          ),
        ),
        SizedBox(height: 1.v),
        Align(
          alignment: Alignment.center,
          child: Obx(
            () => Text(
              product1ItemModelObj.description!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ),
        SizedBox(height: 3.v),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Obx(
            () => Text(
              product1ItemModelObj.price!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
