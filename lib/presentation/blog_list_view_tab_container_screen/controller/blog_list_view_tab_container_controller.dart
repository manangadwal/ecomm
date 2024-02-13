import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/blog_list_view_tab_container_screen/models/blog_list_view_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BlogListViewTabContainerScreen.
///
/// This class manages the state of the BlogListViewTabContainerScreen, including the
/// current blogListViewTabContainerModelObj
class BlogListViewTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BlogListViewTabContainerModel> blogListViewTabContainerModelObj =
      BlogListViewTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
