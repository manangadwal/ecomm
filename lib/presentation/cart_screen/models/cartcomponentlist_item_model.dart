import '../../../core/app_export.dart';

/// This class is used in the [cartcomponentlist_item_widget] screen.
class CartcomponentlistItemModel {
  CartcomponentlistItemModel({
    this.userImage,
    this.titleText,
    this.descriptionText,
    this.quantityText,
    this.priceText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle344);
    titleText = titleText ?? Rx("lamerei");
    descriptionText =
        descriptionText ?? Rx("Recycle Boucle Knit Cardigan Pink");
    quantityText = quantityText ?? Rx("1");
    priceText = priceText ?? Rx("120");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? titleText;

  Rx<String>? descriptionText;

  Rx<String>? quantityText;

  Rx<String>? priceText;

  Rx<String>? id;
}
