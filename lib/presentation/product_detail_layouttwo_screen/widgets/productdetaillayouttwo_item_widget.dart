import '../controller/product_detail_layouttwo_controller.dart';
import '../models/productdetaillayouttwo_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductdetaillayouttwoItemWidget extends StatelessWidget {
  ProductdetaillayouttwoItemWidget(
    this.productdetaillayouttwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdetaillayouttwoItemModel productdetaillayouttwoItemModelObj;

  var controller = Get.find<ProductDetailLayouttwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => CustomImageView(
          imagePath: productdetaillayouttwoItemModelObj.image!.value,
          height: 167.v,
          width: 343.h,
        ),
      ),
    );
  }
}
