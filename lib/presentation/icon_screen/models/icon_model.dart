import '../../../core/app_export.dart';
import 'icon_item_model.dart';

/// This class defines the variables used in the [icon_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IconModel {
  Rx<List<IconItemModel>> iconItemList = Rx([
    IconItemModel(doNotBleach: ImageConstant.imgDoNotBleach.obs),
    IconItemModel(doNotBleach: ImageConstant.imgDoNotTumbleDry.obs),
    IconItemModel(doNotBleach: ImageConstant.imgDoNotWash.obs),
    IconItemModel(doNotBleach: ImageConstant.imgIronLowTemperature.obs),
    IconItemModel(doNotBleach: ImageConstant.imgShipping.obs),
    IconItemModel(doNotBleach: ImageConstant.imgTwitterGray90001.obs),
    IconItemModel(doNotBleach: ImageConstant.imgMapGray90001.obs),
    IconItemModel(doNotBleach: ImageConstant.imgVoucher.obs),
    IconItemModel(doNotBleach: ImageConstant.imgArrowRight.obs),
    IconItemModel(doNotBleach: ImageConstant.imgArrowUpGray9000124x24.obs),
    IconItemModel(doNotBleach: ImageConstant.imgArrowDown24x24.obs),
    IconItemModel(doNotBleach: ImageConstant.imgArrowLeftGray90001.obs),
    IconItemModel(doNotBleach: ImageConstant.imgFilter.obs),
    IconItemModel(doNotBleach: ImageConstant.imgGridGray90001.obs),
    IconItemModel(doNotBleach: ImageConstant.imgComputer.obs),
    IconItemModel(doNotBleach: ImageConstant.imgGrid.obs)
  ]);
}
