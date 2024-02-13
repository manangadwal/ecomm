import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userName,
    this.cardiganDescription,
    this.cardiganPrice,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle3441);
    userName = userName ?? Rx("21WN ");
    cardiganDescription =
        cardiganDescription ?? Rx("reversible angora cardigan");
    cardiganPrice = cardiganPrice ?? Rx("120");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? cardiganDescription;

  Rx<String>? cardiganPrice;

  Rx<String>? id;
}
