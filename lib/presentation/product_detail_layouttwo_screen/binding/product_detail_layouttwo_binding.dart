import '../controller/product_detail_layouttwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDetailLayouttwoScreen.
///
/// This class ensures that the ProductDetailLayouttwoController is created when the
/// ProductDetailLayouttwoScreen is first loaded.
class ProductDetailLayouttwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailLayouttwoController());
  }
}
