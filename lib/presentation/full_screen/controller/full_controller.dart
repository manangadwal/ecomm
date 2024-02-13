import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/full_screen/models/full_model.dart';

/// A controller class for the FullScreen.
///
/// This class manages the state of the FullScreen, including the
/// current fullModelObj
class FullController extends GetxController {
  Rx<FullModel> fullModelObj = FullModel().obs;
}
