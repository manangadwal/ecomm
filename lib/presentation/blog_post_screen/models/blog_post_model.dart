import 'slider1_item_model.dart';
import 'chipview2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [blog_post_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogPostModel {
  Rx<List<Slider1ItemModel>> slider1ItemList =
      Rx(List.generate(1, (index) => Slider1ItemModel()));

  Rx<List<Chipview2ItemModel>> chipview2ItemList =
      Rx(List.generate(2, (index) => Chipview2ItemModel()));
}
