import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/add_new_card_enter_name_state_screen/models/add_new_card_enter_name_state_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewCardEnterNameStateScreen.
///
/// This class manages the state of the AddNewCardEnterNameStateScreen, including the
/// current addNewCardEnterNameStateModelObj
class AddNewCardEnterNameStateController extends GetxController {
  TextEditingController floatingTextFieldController = TextEditingController();

  TextEditingController floatingTextFieldController1 = TextEditingController();

  TextEditingController floatingTextFieldController2 = TextEditingController();

  TextEditingController floatingTextFieldController3 = TextEditingController();

  TextEditingController floatingTextFieldController4 = TextEditingController();

  Rx<AddNewCardEnterNameStateModel> addNewCardEnterNameStateModelObj =
      AddNewCardEnterNameStateModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    floatingTextFieldController.dispose();
    floatingTextFieldController1.dispose();
    floatingTextFieldController2.dispose();
    floatingTextFieldController3.dispose();
    floatingTextFieldController4.dispose();
  }
}
