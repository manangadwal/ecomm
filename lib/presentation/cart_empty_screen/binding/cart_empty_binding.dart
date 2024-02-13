import '../controller/cart_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CartEmptyScreen.
///
/// This class ensures that the CartEmptyController is created when the
/// CartEmptyScreen is first loaded.
class CartEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartEmptyController());
  }
}
