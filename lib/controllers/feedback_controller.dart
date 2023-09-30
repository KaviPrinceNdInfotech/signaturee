import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/services_apis/services_api.dart';

class Feedbackontroller extends GetxController {
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> Feedbackkey = GlobalKey(debugLabel: "Feedbackkey");

  TextEditingController feedBaclMessageController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  Future<void> feedbackApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.FeedbackApi(
      feedBaclMessageController.text,
    );
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    feedBaclMessageController = TextEditingController();
    // passwordController;
  }

  String? validtext(String value) {
    if (value.length < 1) {
      return "provide text";
    }
    return null;
  }

  // checkfeedback() async {
  //   var isValidate = Feedbackkey.currentState!.validate();
  //   if (!isValidate) {
  //     return;
  //   } else {
  //     feedbackApi();
  //   }
  //   Feedbackkey.currentState!.save();
  // }
}
