import '../../../core/app_export.dart';
import 'post_item_model.dart';

/// This class defines the variables used in the [blog_grid_view_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogGridViewModel {
  Rx<List<PostItemModel>> postItemList = Rx([
    PostItemModel(
        image: ImageConstant.imgRectangle434.obs,
        styleGuide: "2021 Style Guide: The Biggest \nFall Trends".obs),
    PostItemModel(
        image: ImageConstant.imgRectangle434200x343.obs,
        styleGuide: "2021 Style Guide: The Biggest \nFall Trends".obs),
    PostItemModel(
        image: ImageConstant.imgRectangle4341.obs,
        styleGuide: "2021 Style Guide: The Biggest \nFall Trends".obs)
  ]);
}
