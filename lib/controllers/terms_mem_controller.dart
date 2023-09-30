import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:signature/model/terms_membership_model.dart';

import '../services_apis/services_api.dart';

class TermsMembershipController extends GetxController {
  RxBool isLoading = true.obs;

  TermMembership? termsmemModel;

  Future<void> termsmemberApi() async {
    isLoading(true);
    termsmemModel = await ApiProvider.TermsMemberApi();
    if (termsmemModel?.id == null) {
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
      termsmemModel = await ApiProvider.TermsMemberApi();
    }
    if (termsmemModel?.id != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    termsmemberApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
