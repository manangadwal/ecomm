import '../controller/category_grid_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryGridViewScreen.
///
/// This class ensures that the CategoryGridViewController is created when the
/// CategoryGridViewScreen is first loaded.
class CategoryGridViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryGridViewController());
  }
}
