import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/blog_post_screen/models/blog_post_model.dart';

/// A controller class for the BlogPostScreen.
///
/// This class manages the state of the BlogPostScreen, including the
/// current blogPostModelObj
class BlogPostController extends GetxController {
  Rx<BlogPostModel> blogPostModelObj = BlogPostModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
