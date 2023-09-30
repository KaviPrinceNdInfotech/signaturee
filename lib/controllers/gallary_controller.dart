import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/gellery_model.dart';
import '../services_apis/services_api.dart';

class GellaryController extends GetxController {
  RxBool isLoading = true.obs;

  GelleryModel? gelleryModel;

  Future<void> gelleryApi() async {
    isLoading(true);
    gelleryModel = await ApiProvider.GalarryApi();
    if (gelleryModel?.gallery?[0].id == null) {
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
      gelleryModel = await ApiProvider.GalarryApi();
    }
    if (gelleryModel?.gallery?[0].id != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    gelleryApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
