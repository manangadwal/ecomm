import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/product_detail_screen/models/product_detail_model.dart';

/// A controller class for the ProductDetailScreen.
///
/// This class manages the state of the ProductDetailScreen, including the
/// current productDetailModelObj
class ProductDetailController extends GetxController {
  Rx<ProductDetailModel> productDetailModelObj = ProductDetailModel().obs;

  Rx<int> sliderIndex = 0.obs;
}