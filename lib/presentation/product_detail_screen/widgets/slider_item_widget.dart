import '../controller/product_detail_controller.dart';
import '../models/slider_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 460.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage15,
              height: 460.v,
              width: 343.h,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 12.h,
                bottom: 12.v,
              ),
              child: CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL18,
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgMap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
