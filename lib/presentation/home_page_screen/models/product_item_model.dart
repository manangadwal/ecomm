import '../../../core/app_export.dart';

/// This class is used in the [product_item_widget] screen.
class ProductItemModel {
  ProductItemModel({
    this.image,
    this.harrisTweedThree,
    this.oneHundredTwenty,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle321);
    harrisTweedThree =
        harrisTweedThree ?? Rx("Harris Tweed Three button Jacket");
    oneHundredTwenty = oneHundredTwenty ?? Rx("120");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? harrisTweedThree;

  Rx<String>? oneHundredTwenty;

  Rx<String>? id;
}
