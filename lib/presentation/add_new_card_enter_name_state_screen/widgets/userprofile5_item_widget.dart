import '../controller/add_new_card_enter_name_state_controller.dart';
import '../models/userprofile5_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  var controller = Get.find<AddNewCardEnterNameStateController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.v,
      width: 316.h,
      margin: EdgeInsets.only(left: 659.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.blueGray700,
          ],
        ),
      ),
    );
  }
}
