//PostPaymentApi

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/services_apis/services_api.dart';

class PostPaymentttController extends GetxController {
  RxBool isLoading = false.obs;
  // final GlobalKey<FormState> Updateprofilekey =
  // GlobalKey(debugLabel: "Updateprofilekey");

//NoOfRooms
  // TextEditingController passwordController = TextEditingController();

  Future<void> postpaymentttApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.PostPaymentApi();
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();

    // passwordController;
  }

  String? validmember1(String value) {
    if (value.length < 1) {
      return "provide member 1";
    }
    return null;
  }

  String? validemail(String value) {
    if (value.length < 1) {
      return "provide email";
    }
    return null;
  }

  String? validmobile(String value) {
    if (value.length < 1) {
      return "provide mobile";
    }
    return null;
  }
}
