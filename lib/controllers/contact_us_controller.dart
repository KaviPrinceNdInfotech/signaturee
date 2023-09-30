import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:signature/model/contact_us_model.dart';
import 'package:signature/services_apis/services_api.dart';

class ContactusController extends GetxController {
  RxBool isLoading = true.obs;
  ContactUsModel? contactusmodel;

  Future<void> contactussApi() async {
    isLoading(true);
    contactusmodel = await ApiProvider.Conntactus();
    if (contactusmodel?.id == null) {
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
      contactusmodel = await ApiProvider.Conntactus();
    }
    if (contactusmodel?.id != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    contactussApi();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
