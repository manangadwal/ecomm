import '../controller/home_page_controller.dart';
import '../models/username_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsernameItemWidget extends StatelessWidget {
  UsernameItemWidget(
    this.usernameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsernameItemModel usernameItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164.adaptSize,
      width: 164.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: usernameItemModelObj.userImage!.value,
              height: 164.adaptSize,
              width: 164.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 164.h,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.gradientPrimaryToPrimary,
              child: Obx(
                () => Text(
                  usernameItemModelObj.userName!.value,
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
