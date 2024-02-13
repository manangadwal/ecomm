import 'package:bhawana_s_collection/core/app_export.dart';
import 'package:bhawana_s_collection/presentation/our_story_screen/models/our_story_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OurStoryScreen.
///
/// This class manages the state of the OurStoryScreen, including the
/// current ourStoryModelObj
class OurStoryController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<OurStoryModel> ourStoryModelObj = OurStoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
