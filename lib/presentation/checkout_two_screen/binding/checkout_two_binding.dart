import '../controller/checkout_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutTwoScreen.
///
/// This class ensures that the CheckoutTwoController is created when the
/// CheckoutTwoScreen is first loaded.
class CheckoutTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutTwoController());
  }
}
