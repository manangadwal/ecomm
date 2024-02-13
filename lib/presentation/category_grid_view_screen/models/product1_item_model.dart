import '../../../core/app_export.dart';

/// This class is used in the [product1_item_widget] screen.
class Product1ItemModel {
  Product1ItemModel({
    this.image1,
    this.title,
    this.description,
    this.price,
    this.id,
  }) {
    image1 = image1 ?? Rx(ImageConstant.imgRectangle344);
    title = title ?? Rx("21WN ");
    description = description ?? Rx("reversible angora cardigan");
    price = price ?? Rx("120");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? title;

  Rx<String>? description;

  Rx<String>? price;

  Rx<String>? id;
}
