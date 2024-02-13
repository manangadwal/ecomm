import '../controller/blog_list_view_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlogListViewTabContainerScreen.
///
/// This class ensures that the BlogListViewTabContainerController is created when the
/// BlogListViewTabContainerScreen is first loaded.
class BlogListViewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogListViewTabContainerController());
  }
}
