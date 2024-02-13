import '../../../core/app_export.dart';

/// This class is used in the [username_item_widget] screen.
class UsernameItemModel {
  UsernameItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle332);
    userName = userName ?? Rx("@mia");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? id;
}
