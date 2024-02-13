import 'controller/app_navigation_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Home page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Blog_List view - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.blogListViewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category_Grid view".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryGridViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category_Listview".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryListviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Detail_LayoutTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productDetailLayouttwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category_Grid view_Full".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryGridViewFullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Full screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Card (Enter Name State)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewCardEnterNameStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Menu_Expand - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.menuExpandTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search_recent".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchRecentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search view".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Our Story".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ourStoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Contact us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contactUsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FourHundredFour".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fourhundredfourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart_Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Blog post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blogPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Icon".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iconScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
