import '../controller/blog_post_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlogPostScreen.
///
/// This class ensures that the BlogPostController is created when the
/// BlogPostScreen is first loaded.
class BlogPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogPostController());
  }
}
