import '../models/select_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectItemWidget extends StatelessWidget {
  SelectItemWidget(
    this.selectItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectItemModel selectItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 7.v,
            bottom: 7.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            selectItemModelObj.close!.value,
            style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 14.fSize,
              fontFamily: 'Tenor Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          deleteIcon: CustomImageView(
            imagePath: ImageConstant.imgCloseGray700,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
          ),
          onDeleted: () {},
          selected: (selectItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blueGray900.withOpacity(0.2),
          shape: (selectItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                ),
          onSelected: (value) {
            selectItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
