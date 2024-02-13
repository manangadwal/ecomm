import '../controller/home_page_controller.dart';
import '../models/product_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(
    this.productItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductItemModel productItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.v),
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productItemModelObj.image!.value,
              height: 311.v,
              width: 254.h,
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 204.h,
            child: Obx(
              () => Text(
                productItemModelObj.harrisTweedThree!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          Obx(
            () => Text(
              productItemModelObj.oneHundredTwenty!.value,
              style: CustomTextStyles.bodyLargeRed300_2,
            ),
          ),
        ],
      ),
    );
  }
}
