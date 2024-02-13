import '../../../core/app_export.dart';

/// This class is used in the [tag_item_widget] screen.
class TagItemModel {
  Rx<String>? tag = Rx("Women");

  Rx<bool>? isSelected = Rx(false);
}
