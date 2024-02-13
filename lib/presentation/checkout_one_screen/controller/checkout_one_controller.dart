import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/checkout_one_screen/models/checkout_one_model.dart';

/// A controller class for the CheckoutOneScreen.
///
/// This class manages the state of the CheckoutOneScreen, including the
/// current checkoutOneModelObj
class CheckoutOneController extends GetxController {
  Rx<CheckoutOneModel> checkoutOneModelObj = CheckoutOneModel().obs;
}
