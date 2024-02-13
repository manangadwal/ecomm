import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/contact_us_screen/models/contact_us_model.dart';

/// A controller class for the ContactUsScreen.
///
/// This class manages the state of the ContactUsScreen, including the
/// current contactUsModelObj
class ContactUsController extends GetxController {
  Rx<ContactUsModel> contactUsModelObj = ContactUsModel().obs;
}
