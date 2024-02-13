import '../controller/search_recent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchRecentScreen.
///
/// This class ensures that the SearchRecentController is created when the
/// SearchRecentScreen is first loaded.
class SearchRecentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchRecentController());
  }
}
