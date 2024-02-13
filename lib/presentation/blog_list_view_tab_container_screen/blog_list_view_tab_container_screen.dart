import 'controller/blog_list_view_tab_container_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/blog_grid_view_page/blog_grid_view_page.dart';
import 'package:bhawana_s_collection/presentation/blog_list_view_page/blog_list_view_page.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_leading_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_title_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bhawana_s_collection/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BlogListViewTabContainerScreen
    extends GetWidget<BlogListViewTabContainerController> {
  const BlogListViewTabContainerScreen({Key? key})
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
            children: [
              SizedBox(height: 38.v),
              Text(
                "lbl_blog".tr.toUpperCase(),
                style: CustomTextStyles.bodyLarge18_1,
              ),
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.img3,
                height: 9.v,
                width: 124.h,
              ),
              SizedBox(height: 27.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 1543.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      BlogListViewPage(),
                      BlogListViewPage(),
                      BlogListViewPage(),
                      BlogListViewPage(),
                      BlogGridViewPage(),
                    ],
                  ),
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgSettings,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 24.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 24.v,
            right: 35.h,
          ),
        ),
      ],
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 32.v,
      width: 359.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.blueGray900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Tenor Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Tenor Sans',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray50,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_fashion".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_promo".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_policy".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_lookbook".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sale".tr,
            ),
          ),
        ],
      ),
    );
  }
}
