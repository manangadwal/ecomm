import '../models/chipview_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewItemModel chipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          left: 12.h,
          top: 10.v,
          bottom: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewItemModelObj.close!.value,
          style: TextStyle(
            color: appTheme.gray700,
            fontSize: 13.fSize,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgCloseGray90001,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
        ),
        onDeleted: () {},
        selected: (chipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray400.withOpacity(0.1),
        selectedColor: appTheme.gray400.withOpacity(0.1),
        shape: (chipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray700.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
        onSelected: (value) {
          chipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
