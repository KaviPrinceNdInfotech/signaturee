import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/services_apis/services_api.dart';

class BecomeMemberController extends GetxController {
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> becomememberekey =
      GlobalKey(debugLabel: "becomememberekey");

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController DurationController = TextEditingController();
  TextEditingController DescriptionController = TextEditingController();

//NoOfRooms
  // TextEditingController passwordController = TextEditingController();

  void becomememberApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.BecomeMenberApi(
      nameController.text,
      emailController.text,
      mobileController.text,
      DurationController.text,
      DescriptionController.text,
    );
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    nameController;
    emailController;
    mobileController;
    DurationController;
    DescriptionController;

    // passwordController;
  }

  String? valiname(String value) {
    if (value.length < 1) {
      return "provide name";
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

  String? validdescription(String value) {
    if (value.length < 1) {
      return "provide description";
    }
    return null;
  }

  String? validduration(String value) {
    if (value.length < 1) {
      return "provide duration";
    }
    return null;
  }

  checkmembers() async {
    var isValidate = becomememberekey.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      becomememberApi();
    }
    becomememberekey.currentState!.save();
  }
}
