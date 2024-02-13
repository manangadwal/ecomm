import '../controller/icon_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IconScreen.
///
/// This class ensures that the IconController is created when the
/// IconScreen is first loaded.
class IconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IconController());
  }
}
