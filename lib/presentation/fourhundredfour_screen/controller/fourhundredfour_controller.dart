import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/fourhundredfour_screen/models/fourhundredfour_model.dart';

/// A controller class for the FourhundredfourScreen.
///
/// This class manages the state of the FourhundredfourScreen, including the
/// current fourhundredfourModelObj
class FourhundredfourController extends GetxController {
  Rx<FourhundredfourModel> fourhundredfourModelObj = FourhundredfourModel().obs;
}
