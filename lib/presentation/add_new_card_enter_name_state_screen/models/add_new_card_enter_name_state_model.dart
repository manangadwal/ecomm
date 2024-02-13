import 'userprofile4_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [add_new_card_enter_name_state_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewCardEnterNameStateModel {
  Rx<List<Userprofile4ItemModel>> userprofile4ItemList =
      Rx(List.generate(1, (index) => Userprofile4ItemModel()));
}
