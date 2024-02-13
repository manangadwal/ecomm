import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/checkout_two_screen/models/checkout_two_model.dart';

/// A controller class for the CheckoutTwoScreen.
///
/// This class manages the state of the CheckoutTwoScreen, including the
/// current checkoutTwoModelObj
class CheckoutTwoController extends GetxController {
  Rx<CheckoutTwoModel> checkoutTwoModelObj = CheckoutTwoModel().obs;
}
