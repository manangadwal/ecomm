import 'package:bhawana_s_collection/data/models/selectionPopupModel/selection_popup_model.dart';
import 'select_item_model.dart';
import '../../../core/app_export.dart';
import 'product1_item_model.dart';

/// This class defines the variables used in the [category_grid_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryGridViewModel {
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

  Rx<List<SelectItemModel>> selectItemList =
      Rx(List.generate(2, (index) => SelectItemModel()));

  Rx<List<Product1ItemModel>> product1ItemList = Rx([
    Product1ItemModel(
        image1: ImageConstant.imgRectangle344.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    Product1ItemModel(
        image1: ImageConstant.imgRectangle3441.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    Product1ItemModel(
        image1: ImageConstant.imgRectangle3443.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    Product1ItemModel(
        image1: ImageConstant.imgRectangle3441.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    Product1ItemModel(
        image1: ImageConstant.imgRectangle3443.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs)
  ]);
}
