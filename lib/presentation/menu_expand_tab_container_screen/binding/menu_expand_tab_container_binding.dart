import '../controller/menu_expand_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuExpandTabContainerScreen.
///
/// This class ensures that the MenuExpandTabContainerController is created when the
/// MenuExpandTabContainerScreen is first loaded.
class MenuExpandTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuExpandTabContainerController());
  }
}
