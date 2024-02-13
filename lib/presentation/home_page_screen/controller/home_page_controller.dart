import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/home_page_screen/models/home_page_model.dart';

/// A controller class for the HomePageScreen.
///
/// This class manages the state of the HomePageScreen, including the
/// current homePageModelObj
class HomePageController extends GetxController {
  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
