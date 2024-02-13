import '../controller/blog_post_controller.dart';
import '../models/slider1_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Slider1ItemWidget extends StatelessWidget {
  Slider1ItemWidget(
    this.slider1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slider1ItemModel slider1ItemModelObj;

  var controller = Get.find<BlogPostController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage14,
      height: 450.v,
      width: 342.h,
    );
  }
}
