import 'chipview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [search_recent_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchRecentModel {
  Rx<List<ChipviewItemModel>> chipviewItemList =
      Rx(List.generate(3, (index) => ChipviewItemModel()));
}
