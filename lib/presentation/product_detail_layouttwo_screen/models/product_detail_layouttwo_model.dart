import '../../../core/app_export.dart';
import 'productdetaillayouttwo_item_model.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [product_detail_layouttwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailLayouttwoModel {
  Rx<List<ProductdetaillayouttwoItemModel>> productdetaillayouttwoItemList =
      Rx([
    ProductdetaillayouttwoItemModel(image: ImageConstant.imgImage16.obs),
    ProductdetaillayouttwoItemModel(image: ImageConstant.imgImage17.obs),
    ProductdetaillayouttwoItemModel(image: ImageConstant.imgImage18.obs)
  ]);

  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgRectangle3444.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgRectangle3445.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgRectangle3446.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgRectangle3447.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs)
  ]);
}
