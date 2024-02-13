import '../controller/our_story_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OurStoryScreen.
///
/// This class ensures that the OurStoryController is created when the
/// OurStoryScreen is first loaded.
class OurStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurStoryController());
  }
}
