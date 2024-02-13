import '../../../core/app_export.dart';

/// This class is used in the [select_item_widget] screen.
class SelectItemModel {
  Rx<String>? close = Rx("Women");

  Rx<bool>? isSelected = Rx(false);
}
