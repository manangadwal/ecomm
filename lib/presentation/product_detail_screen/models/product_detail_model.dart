import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [product_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(1, (index) => SliderItemModel()));

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3441.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3441.obs,
        userName: "21WN ".obs,
        cardiganDescription: "reversible angora cardigan".obs,
        cardiganPrice: "120".obs)
  ]);
}
