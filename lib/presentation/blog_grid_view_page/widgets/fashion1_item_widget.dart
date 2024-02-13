import '../models/fashion1_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Fashion1ItemWidget extends StatelessWidget {
  Fashion1ItemWidget(
    this.fashion1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fashion1ItemModel fashion1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 4.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            fashion1ItemModelObj.fashion!.value,
            style: TextStyle(
              color: appTheme.blueGray400,
              fontSize: 12.fSize,
              fontFamily: 'Tenor Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (fashion1ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blueGray400.withOpacity(0.2),
          shape: (fashion1ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
          onSelected: (value) {
            fashion1ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
