import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.image,
    this.title,
    this.price,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle325);
    title = title ?? Rx("21WN reversible angora cardigan");
    price = price ?? Rx("120");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? id;
}
