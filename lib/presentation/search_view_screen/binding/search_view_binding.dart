import '../controller/search_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchViewScreen.
///
/// This class ensures that the SearchViewController is created when the
/// SearchViewScreen is first loaded.
class SearchViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchViewController());
  }
}
