import 'userprofile3_item_model.dart';
import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.userprofile3ItemList,
    this.id,
  }) {
    userprofile3ItemList = userprofile3ItemList ??
        Rx(List.generate(3, (index) => Userprofile3ItemModel()));
    id = id ?? Rx("");
  }

  Rx<List<Userprofile3ItemModel>>? userprofile3ItemList;

  Rx<String>? id;
}
