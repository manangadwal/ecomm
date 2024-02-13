import 'package:bhawana_s_collection/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productlist_item_model.dart';

/// This class defines the variables used in the [category_listview_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryListviewModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<ProductlistItemModel>> productlistItemList = Rx([
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle344220x165.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar1.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle344.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar113x13.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3441.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar11.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3442.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar12.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3443.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar13.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle344220x165.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar14.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3441.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar15.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle344220x165.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar16.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3443.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar17.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs),
    ProductlistItemModel(
        userImage: ImageConstant.imgRectangle3442.obs,
        title: "lamerei".obs,
        description: "Recycle Boucle Knit Cardigan Pink".obs,
        price: "120".obs,
        ratingImage: ImageConstant.imgStar18.obs,
        ratingText: "4.8 Ratings".obs,
        sizeLabel: "Size".obs,
        sizeS: "S".obs,
        sizeM: "M".obs,
        sizeL: "L".obs)
  ]);
}
