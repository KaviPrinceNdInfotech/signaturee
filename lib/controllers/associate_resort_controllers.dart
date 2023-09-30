import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:signature/model/get_associate_model.dart';

import '../services_apis/services_api.dart';

class GetAssociateController extends GetxController {
  RxBool isLoading = true.obs;

  GetassociateModel? getresortModel;

  Future<void> associateresorttApi() async {
    isLoading(true);
    getresortModel = await ApiProvider.AssociateresortApi();
    if (getresortModel?.ourResorts?[0].id == null) {
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
      getresortModel = await ApiProvider.AssociateresortApi();
    }
    if (getresortModel?.ourResorts?[0].id != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    associateresorttApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
