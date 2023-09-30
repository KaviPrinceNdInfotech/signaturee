import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/services_apis/services_api.dart';

class UpdateprofileController extends GetxController {
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> Updateprofilekey =
      GlobalKey(debugLabel: "Updateprofilekey");

  TextEditingController member1Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

//NoOfRooms
  // TextEditingController passwordController = TextEditingController();

  void updateprifileeApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.UpdateProfile(
      member1Controller.text,
      emailController.text,
      mobileController.text,
    );
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    member1Controller;
    emailController;
    mobileController;

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

  checkprofile() async {
    var isValidate = Updateprofilekey.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      updateprifileeApi();
    }
    Updateprofilekey.currentState!.save();
  }
}
