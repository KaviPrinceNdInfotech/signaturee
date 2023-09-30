import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/services_apis/services_api.dart';

class ChangepasswordController extends GetxController {
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> Changepasskey =
      GlobalKey(debugLabel: "Feedbackkey");

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

//NoOfRooms
  // TextEditingController passwordController = TextEditingController();

  void changepasswordApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.ChangePassword(
      oldPasswordController.text,
      passwordController.text,
      confirmPasswordController.text,
    );
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    oldPasswordController;
    passwordController;
    confirmPasswordController;

    // passwordController;
  }

  String? validoldpassword(String value) {
    if (value.length < 1) {
      return "provide password old";
    }
    return null;
  }

  String? validpassword(String value) {
    if (value.length < 1) {
      return "provide new password";
    }
    return null;
  }

  String? validconfirmpass(String value) {
    if (value.length < 1) {
      return "provide confirm password";
    }
    return null;
  }

  checkpasswordd() async {
    var isValidate = Changepasskey.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      changepasswordApi();
    }
    Changepasskey.currentState!.save();
  }
}
