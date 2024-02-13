import 'package:bhawana_s_collection/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [search_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchViewModel {
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

  Rx<List<ProductgridItemModel>> productgridItemList = Rx([
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle3448.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34410.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34412.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34414.obs,
        title: "21WN ".obs,
        description: "reversible angora cardigan".obs,
        price: "120".obs)
  ]);
}
