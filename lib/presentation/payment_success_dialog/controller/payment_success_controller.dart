import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/payment_success_dialog/models/payment_success_model.dart';

/// A controller class for the PaymentSuccessDialog.
///
/// This class manages the state of the PaymentSuccessDialog, including the
/// current paymentSuccessModelObj
class PaymentSuccessController extends GetxController {
  Rx<PaymentSuccessModel> paymentSuccessModelObj = PaymentSuccessModel().obs;
}
