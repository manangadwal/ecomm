import '../../../core/app_export.dart';
import 'productcard_item_model.dart';
import 'product_item_model.dart';
import 'ninetyone_item_model.dart';
import 'username_item_model.dart';

/// This class defines the variables used in the [home_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageModel {
  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        image: ImageConstant.imgRectangle325.obs,
        title: "21WN reversible angora cardigan".obs,
        price: "120".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle325200x165.obs,
        title: "21WN reversible angora cardigan".obs,
        price: "120".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle3251.obs,
        title: "21WN reversible angora cardigan".obs,
        price: "120".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle3252.obs,
        title: "Oblong bag".obs,
        price: "120".obs)
  ]);

  Rx<List<ProductItemModel>> productItemList = Rx([
    ProductItemModel(
        image: ImageConstant.imgRectangle321.obs,
        harrisTweedThree: "Harris Tweed Three button Jacket".obs,
        oneHundredTwenty: "120".obs)
  ]);

  Rx<List<NinetyoneItemModel>> ninetyoneItemList =
      Rx(List.generate(7, (index) => NinetyoneItemModel()));

  Rx<List<UsernameItemModel>> usernameItemList = Rx([
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle332.obs, userName: "@mia".obs),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle333.obs, userName: "@_jihyn".obs),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle334.obs, userName: "@mia".obs),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle335.obs, userName: "@_jihyn".obs)
  ]);
}
