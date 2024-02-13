import '../controller/icon_controller.dart';
import '../models/icon_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconItemWidget extends StatelessWidget {
  IconItemWidget(
    this.iconItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IconItemModel iconItemModelObj;

  var controller = Get.find<IconController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: iconItemModelObj.doNotBleach!.value,
        height: 24.adaptSize,
        width: 24.adaptSize,
      ),
    );
  }
}
