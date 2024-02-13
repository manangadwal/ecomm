import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/category_grid_view_screen/models/category_grid_view_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the CategoryGridViewScreen.
///
/// This class manages the state of the CategoryGridViewScreen, including the
/// current categoryGridViewModelObj
class CategoryGridViewController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<CategoryGridViewModel> categoryGridViewModelObj =
      CategoryGridViewModel().obs;

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
    for (var element in categoryGridViewModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    categoryGridViewModelObj.value.dropdownItemList.refresh();
  }
}
