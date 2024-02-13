import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {
  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  TextEditingController zipcodeEditTextController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameEditTextController.dispose();
    lastNameEditTextController.dispose();
    addressEditTextController.dispose();
    cityEditTextController.dispose();
    zipcodeEditTextController.dispose();
  }
}
