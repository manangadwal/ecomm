import '../controller/fourhundredfour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FourhundredfourScreen.
///
/// This class ensures that the FourhundredfourController is created when the
/// FourhundredfourScreen is first loaded.
class FourhundredfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FourhundredfourController());
  }
}
