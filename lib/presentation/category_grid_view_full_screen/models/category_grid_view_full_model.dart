import 'package:bhawana_s_collection/data/models/selectionPopupModel/selection_popup_model.dart';
import 'tag_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [category_grid_view_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryGridViewFullModel {
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

  Rx<List<TagItemModel>> tagItemList =
      Rx(List.generate(2, (index) => TagItemModel()));
}
