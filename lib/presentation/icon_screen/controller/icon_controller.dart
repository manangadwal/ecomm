import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/icon_screen/models/icon_model.dart';

/// A controller class for the IconScreen.
///
/// This class manages the state of the IconScreen, including the
/// current iconModelObj
class IconController extends GetxController {
  Rx<IconModel> iconModelObj = IconModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homePageScreen,
      );
    });
  }
}
