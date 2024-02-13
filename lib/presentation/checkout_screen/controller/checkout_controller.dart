import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/checkout_screen/models/checkout_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CheckoutScreen.
///
/// This class manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {
  TextEditingController plusController = TextEditingController();

  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    plusController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in checkoutModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    checkoutModelObj.value.dropdownItemList.refresh();
  }
}
