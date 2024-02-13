import 'controller/search_controller.dart';
import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
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
              SizedBox(height: 20.v),
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
}
