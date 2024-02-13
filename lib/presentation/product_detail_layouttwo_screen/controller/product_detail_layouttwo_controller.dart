import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/product_detail_layouttwo_screen/models/product_detail_layouttwo_model.dart';

/// A controller class for the ProductDetailLayouttwoScreen.
///
/// This class manages the state of the ProductDetailLayouttwoScreen, including the
/// current productDetailLayouttwoModelObj
class ProductDetailLayouttwoController extends GetxController {
  Rx<ProductDetailLayouttwoModel> productDetailLayouttwoModelObj =
      ProductDetailLayouttwoModel().obs;
}
