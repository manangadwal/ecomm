import '../models/ninetyone_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetyoneItemWidget extends StatelessWidget {
  NinetyoneItemWidget(
    this.ninetyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyoneItemModel ninetyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          ninetyoneItemModelObj.frameEleven!.value,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 14.fSize,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (ninetyoneItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: (ninetyoneItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray900.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
        onSelected: (value) {
          ninetyoneItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
