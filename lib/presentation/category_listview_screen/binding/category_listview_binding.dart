import '../controller/category_listview_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryListviewScreen.
///
/// This class ensures that the CategoryListviewController is created when the
/// CategoryListviewScreen is first loaded.
class CategoryListviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryListviewController());
  }
}
