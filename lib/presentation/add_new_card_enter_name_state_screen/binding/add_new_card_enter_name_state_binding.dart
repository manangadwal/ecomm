import '../controller/add_new_card_enter_name_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewCardEnterNameStateScreen.
///
/// This class ensures that the AddNewCardEnterNameStateController is created when the
/// AddNewCardEnterNameStateScreen is first loaded.
class AddNewCardEnterNameStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewCardEnterNameStateController());
  }
}
