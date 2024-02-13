import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/menu_page/models/menu_model.dart';

/// A controller class for the MenuPage.
///
/// This class manages the state of the MenuPage, including the
/// current menuModelObj
class MenuController extends GetxController {
  MenuController(this.menuModelObj);

  Rx<MenuModel> menuModelObj;
}
