//PaymentHistory

import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:signature/model/emi_due_payment.dart';
import 'package:signature/services_apis/services_api.dart';

import '../model/payment_history_model.dart';

class PaymentDetailController extends GetxController {
  RxBool isLoading = true.obs;

  PaymentHisModel? paymentHisModel;
  //AmcDueapi
  EmiDueModel? emiDueModel;

  Future<void> paymentdetailApi() async {
    isLoading(true);
    paymentHisModel = await ApiProvider.PaymentHistoryApi();
    if (paymentHisModel?.data == null) {
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
      paymentHisModel = await ApiProvider.PaymentHistoryApi();
    }
    if (paymentHisModel?.data != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    paymentdetailApi();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
