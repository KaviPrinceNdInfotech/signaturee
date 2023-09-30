import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:signature/model/my_vacation_model.dart';

import '../services_apis/services_api.dart';

class MyvacationController extends GetxController {
  RxBool isLoading = true.obs;
  MyVacationModel? myVacationModel;

  Future<void> myvacationApi() async {
    isLoading(true);
    myVacationModel = await ApiProvider.MyHolidayApi();
    if (myVacationModel?.myVacationHistory == null) {
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
      myVacationModel = await ApiProvider.MyHolidayApi();
    }
    if (myVacationModel?.myVacationHistory != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    myvacationApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
