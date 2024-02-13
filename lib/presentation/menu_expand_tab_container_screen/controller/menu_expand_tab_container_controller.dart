import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/menu_expand_tab_container_screen/models/menu_expand_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MenuExpandTabContainerScreen.
///
/// This class manages the state of the MenuExpandTabContainerScreen, including the
/// current menuExpandTabContainerModelObj
class MenuExpandTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MenuExpandTabContainerModel> menuExpandTabContainerModelObj =
      MenuExpandTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
