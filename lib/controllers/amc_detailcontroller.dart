import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:signature/model/amc_detail_model.dart';
import 'package:signature/model/emi_due_payment.dart';
import 'package:signature/services_apis/services_api.dart';

class AmcDetailController extends GetxController {
  RxBool isLoading = true.obs;

  AmcdetailModel? getamcdetails;
  //AmcDueapi
  EmiDueModel? emiDueModel;

  Future<void> amcdetailApi() async {
    isLoading(true);
    getamcdetails = await ApiProvider.AmcDetailsapi();
    if (getamcdetails?.amcDetail == null) {
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
      getamcdetails = await ApiProvider.AmcDetailsapi();
    }
    if (getamcdetails?.amcDetail != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  ///
  Future<void> amcdueApi() async {
    isLoading(true);
    emiDueModel = await ApiProvider.AmcDueapi();
    if (emiDueModel?.emi == null) {
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
      emiDueModel = await ApiProvider.AmcDueapi();
    }
    if (emiDueModel?.emi != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    amcdetailApi();
    amcdueApi();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
