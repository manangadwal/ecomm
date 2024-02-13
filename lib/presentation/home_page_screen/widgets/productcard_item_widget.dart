import '../controller/home_page_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productcardItemModelObj.image!.value,
            height: 200.v,
            width: 165.h,
          ),
        ),
        SizedBox(height: 4.v),
        SizedBox(
          width: 136.h,
          child: Obx(
            () => Text(
              productcardItemModelObj.title!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBluegray900.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            productcardItemModelObj.price!.value,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
