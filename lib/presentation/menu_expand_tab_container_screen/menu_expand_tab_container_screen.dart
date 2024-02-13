import 'controller/menu_expand_tab_container_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/menu_page/menu_page.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MenuExpandTabContainerScreen
    extends GetWidget<MenuExpandTabContainerController> {
  const MenuExpandTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 375.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.v),
              _buildTabview(),
              SizedBox(
                height: 543.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MenuPage(),
                    MenuPage(),
                    MenuPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 375.h,
      leading: Container(
        height: 12.adaptSize,
        width: 12.adaptSize,
        margin: EdgeInsets.fromLTRB(22.h, 16.v, 341.h, 16.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector4,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector5,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 34.v,
      width: 310.h,
      margin: EdgeInsets.only(left: 19.h),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Tenor Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray900.withOpacity(0.53),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Tenor Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.red300,
        tabs: [
          Tab(
            child: Text(
              "lbl_women".tr,
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_man".tr,
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_kids".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
