import '../../../core/app_export.dart';
import 'cartcomponentlist_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<CartcomponentlistItemModel>> cartcomponentlistItemList = Rx([
    CartcomponentlistItemModel(
        userImage: ImageConstant.imgRectangle344.obs,
        titleText: "lamerei".obs,
        descriptionText: "Recycle Boucle Knit Cardigan Pink".obs,
        quantityText: "1".obs,
        priceText: "120".obs),
    CartcomponentlistItemModel(
        userImage: ImageConstant.imgRectangle3442.obs,
        titleText: "5252 by o!oi".obs,
        descriptionText: "2021 Signature Sweatshirt [NAVY]".obs,
        quantityText: "1".obs,
        priceText: "120".obs)
  ]);
}
