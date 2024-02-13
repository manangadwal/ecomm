import '../search_recent_screen/widgets/chipview_item_widget.dart';
import 'controller/search_recent_controller.dart';
import 'models/chipview_item_model.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchRecentScreen extends GetWidget<SearchRecentController> {
  const SearchRecentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 37.v,
                width: 314.h,
              ),
              SizedBox(height: 18.v),
              Text(
                "lbl_recent_search".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 9.v),
              _buildChipView(),
              SizedBox(height: 32.v),
              Text(
                "msg_popular_search_terms".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 92.h,
                child: Text(
                  "msg_trend_dress_bag".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 2.28,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 10.93.v,
        spacing: 10.93.h,
        children: List<Widget>.generate(
          controller.searchRecentModelObj.value.chipviewItemList.value.length,
          (index) {
            ChipviewItemModel model = controller
                .searchRecentModelObj.value.chipviewItemList.value[index];

            return ChipviewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
