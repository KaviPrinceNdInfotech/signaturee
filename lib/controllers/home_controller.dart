import 'package:get/get.dart';
import 'package:signature/model/banner_model.dart';

import '../services_apis/services_api.dart';
//import '../../../../servicess_api/api_services_all_api.dart';

class UserHomepageController extends GetxController {
  RxBool isLoading = true.obs;
  // String MedicineId = "";
  // var cartId = "";

  UserBannerModel? getuserbannerlist;

  Future<void> doctorBannerApi() async {
    isLoading(true);
    getuserbannerlist = await ApiProvider.SliderBannerApi();
    if (getuserbannerlist?.banner != null) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    doctorBannerApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
