import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/blog_grid_view_page/models/blog_grid_view_model.dart';

/// A controller class for the BlogGridViewPage.
///
/// This class manages the state of the BlogGridViewPage, including the
/// current blogGridViewModelObj
class BlogGridViewController extends GetxController {
  BlogGridViewController(this.blogGridViewModelObj);

  Rx<BlogGridViewModel> blogGridViewModelObj;
}
