import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/category_listview_screen/models/category_listview_model.dart';

/// A controller class for the CategoryListviewScreen.
///
/// This class manages the state of the CategoryListviewScreen, including the
/// current categoryListviewModelObj
class CategoryListviewController extends GetxController {
  Rx<CategoryListviewModel> categoryListviewModelObj =
      CategoryListviewModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in categoryListviewModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    categoryListviewModelObj.value.dropdownItemList.refresh();
  }
}
