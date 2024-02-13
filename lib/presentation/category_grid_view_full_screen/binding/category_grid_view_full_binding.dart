import '../controller/category_grid_view_full_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryGridViewFullScreen.
///
/// This class ensures that the CategoryGridViewFullController is created when the
/// CategoryGridViewFullScreen is first loaded.
class CategoryGridViewFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryGridViewFullController());
  }
}
