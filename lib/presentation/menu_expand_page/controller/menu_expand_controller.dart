import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/menu_expand_page/models/menu_expand_model.dart';

/// A controller class for the MenuExpandPage.
///
/// This class manages the state of the MenuExpandPage, including the
/// current menuExpandModelObj
class MenuExpandController extends GetxController {
  MenuExpandController(this.menuExpandModelObj);

  Rx<MenuExpandModel> menuExpandModelObj;
}
