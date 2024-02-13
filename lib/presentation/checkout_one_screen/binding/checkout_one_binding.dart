import '../controller/checkout_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutOneScreen.
///
/// This class ensures that the CheckoutOneController is created when the
/// CheckoutOneScreen is first loaded.
class CheckoutOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutOneController());
  }
}
