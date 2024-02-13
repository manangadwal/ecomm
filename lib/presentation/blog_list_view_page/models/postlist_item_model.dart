import '../../../core/app_export.dart';

/// This class is used in the [postlist_item_widget] screen.
class PostlistItemModel {
  PostlistItemModel({
    this.imageText,
    this.excitementText,
    this.styleGuideText,
    this.timeText,
    this.id,
  }) {
    imageText = imageText ?? Rx(ImageConstant.imgRectangle433);
    excitementText = excitementText ??
        Rx("The excitement of fall fashion is here and I’m already loving some of the trend forecasts ");
    styleGuideText =
        styleGuideText ?? Rx("2021 Style Guide: \nThe Biggest Fall Trends");
    timeText = timeText ?? Rx("4 days ago");
    id = id ?? Rx("");
  }

  Rx<String>? imageText;

  Rx<String>? excitementText;

  Rx<String>? styleGuideText;

  Rx<String>? timeText;

  Rx<String>? id;
}
