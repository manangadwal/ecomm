import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/category_grid_view_full_screen/models/category_grid_view_full_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the CategoryGridViewFullScreen.
///
/// This class manages the state of the CategoryGridViewFullScreen, including the
/// current categoryGridViewFullModelObj
class CategoryGridViewFullController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<CategoryGridViewFullModel> categoryGridViewFullModelObj =
      CategoryGridViewFullModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  onSelected(dynamic value) {
    for (var element
        in categoryGridViewFullModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    categoryGridViewFullModelObj.value.dropdownItemList.refresh();
  }
}
