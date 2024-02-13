import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/blog_list_view_page/models/blog_list_view_model.dart';

/// A controller class for the BlogListViewPage.
///
/// This class manages the state of the BlogListViewPage, including the
/// current blogListViewModelObj
class BlogListViewController extends GetxController {
  BlogListViewController(this.blogListViewModelObj);

  Rx<BlogListViewModel> blogListViewModelObj;
}
