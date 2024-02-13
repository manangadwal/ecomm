import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/search_view_screen/models/search_view_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchViewScreen.
///
/// This class manages the state of the SearchViewScreen, including the
/// current searchViewModelObj
class SearchViewController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SearchViewModel> searchViewModelObj = SearchViewModel().obs;

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
    for (var element in searchViewModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    searchViewModelObj.value.dropdownItemList.refresh();
  }
}
