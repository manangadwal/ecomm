import '../../../core/app_export.dart';

/// This class is used in the [icon_item_widget] screen.
class IconItemModel {
  IconItemModel({
    this.doNotBleach,
    this.id,
  }) {
    doNotBleach = doNotBleach ?? Rx(ImageConstant.imgDoNotBleach);
    id = id ?? Rx("");
  }

  Rx<String>? doNotBleach;

  Rx<String>? id;
}
