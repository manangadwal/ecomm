import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/search_recent_screen/models/search_recent_model.dart';

/// A controller class for the SearchRecentScreen.
///
/// This class manages the state of the SearchRecentScreen, including the
/// current searchRecentModelObj
class SearchRecentController extends GetxController {
  Rx<SearchRecentModel> searchRecentModelObj = SearchRecentModel().obs;
}
