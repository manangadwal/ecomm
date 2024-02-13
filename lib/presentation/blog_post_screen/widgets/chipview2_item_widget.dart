import '../models/chipview2_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipview2ItemWidget extends StatelessWidget {
  Chipview2ItemWidget(
    this.chipview2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipview2ItemModel chipview2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 8.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipview2ItemModelObj.fashion!.value,
            style: TextStyle(
              color: appTheme.blueGray400,
              fontSize: 12.fSize,
              fontFamily: 'Tenor Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (chipview2ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blueGray400.withOpacity(0.2),
          shape: (chipview2ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                ),
          onSelected: (value) {
            chipview2ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
