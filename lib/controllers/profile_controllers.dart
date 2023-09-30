import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:signature/model/profile_model.dart';

import '../services_apis/services_api.dart';

class ProfileController extends GetxController {
  RxBool isLoading = true.obs;

  GetProfileModel? getprofileModel;

  Future<void> profileApi() async {
    isLoading(true);
    getprofileModel = await ApiProvider.PriofileApi();
    if (getprofileModel?.email == null) {
      Timer(
        const Duration(seconds: 1),
        () {
          //Get.snackbar("Fail", "${medicinecheckoutModel?.data}");
          //Get.to(() => MedicineCart());
          //Get.to((page))
          ///
        },
      );
      isLoading(true);
      getprofileModel = await ApiProvider.PriofileApi();
    }
    if (getprofileModel?.email != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    profileApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
