import '../../../core/app_export.dart';
import 'postlist_item_model.dart';

/// This class defines the variables used in the [blog_list_view_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogListViewModel {
  Rx<List<PostlistItemModel>> postlistItemList = Rx([
    PostlistItemModel(
        imageText: ImageConstant.imgRectangle433.obs,
        excitementText:
            "The excitement of fall fashion is here and I’m already loving some of the trend forecasts "
                .obs,
        styleGuideText: "2021 Style Guide: \nThe Biggest Fall Trends".obs,
        timeText: "4 days ago".obs),
    PostlistItemModel(imageText: ImageConstant.imgRectangle433155x120.obs),
    PostlistItemModel(imageText: ImageConstant.imgRectangle4331.obs),
    PostlistItemModel(imageText: ImageConstant.imgRectangle4332.obs),
    PostlistItemModel(
        imageText: ImageConstant.imgRectangle4342.obs,
        excitementText:
            "The excitement of fall fashion is here and I’m already loving some of the trend forecasts "
                .obs,
        styleGuideText: "2021 Style Guide: \nThe Biggest Fall Trends".obs,
        timeText: "16/10/2021".obs),
    PostlistItemModel(imageText: ImageConstant.imgRectangle4333.obs)
  ]);
}
