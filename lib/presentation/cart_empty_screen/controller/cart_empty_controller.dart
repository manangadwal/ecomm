import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/cart_empty_screen/models/cart_empty_model.dart';

/// A controller class for the CartEmptyScreen.
///
/// This class manages the state of the CartEmptyScreen, including the
/// current cartEmptyModelObj
class CartEmptyController extends GetxController {
  Rx<CartEmptyModel> cartEmptyModelObj = CartEmptyModel().obs;
}
