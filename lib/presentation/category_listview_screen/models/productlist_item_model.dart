import '../../../core/app_export.dart';

/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {
  ProductlistItemModel({
    this.userImage,
    this.title,
    this.description,
    this.price,
    this.ratingImage,
    this.ratingText,
    this.sizeLabel,
    this.sizeS,
    this.sizeM,
    this.sizeL,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle344220x165);
    title = title ?? Rx("lamerei");
    description = description ?? Rx("Recycle Boucle Knit Cardigan Pink");
    price = price ?? Rx("120");
    ratingImage = ratingImage ?? Rx(ImageConstant.imgStar1);
    ratingText = ratingText ?? Rx("4.8 Ratings");
    sizeLabel = sizeLabel ?? Rx("Size");
    sizeS = sizeS ?? Rx("S");
    sizeM = sizeM ?? Rx("M");
    sizeL = sizeL ?? Rx("L");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? title;

  Rx<String>? description;

  Rx<String>? price;

  Rx<String>? ratingImage;

  Rx<String>? ratingText;

  Rx<String>? sizeLabel;

  Rx<String>? sizeS;

  Rx<String>? sizeM;

  Rx<String>? sizeL;

  Rx<String>? id;
}
