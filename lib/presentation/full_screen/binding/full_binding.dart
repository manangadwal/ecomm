import '../controller/full_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FullScreen.
///
/// This class ensures that the FullController is created when the
/// FullScreen is first loaded.
class FullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FullController());
  }
}
