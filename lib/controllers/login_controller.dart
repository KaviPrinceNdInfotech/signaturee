import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:signature/controllers/profile_controllers.dart';
import 'package:signature/services_apis/services_api.dart';
import 'package:signature/view/home_page/home_pageee.dart';

import '../model/auto_login_account_model.dart';
import '../utils/acount_service_autologin.dart';

class LoginController extends GetxController {
  ProfileController _profileController = Get.put(ProfileController());

  RxBool isLoading = false.obs;
  final GlobalKey<FormState> Loginformkey =
      GlobalKey(debugLabel: "Loginformkey");

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginnApi() async {
    isLoading(true);
    http.Response r = await ApiProvider.LoginApi(
      usernameController.text,
      passwordController.text,
    );
    if (r.statusCode == 200) {
      await _profileController.profileApi();
      _profileController.update();
      _profileController.onInit();
      final accountData = messageFromJson(r.body);
      print("ACCOUNT ${accountData.toJson()}");
      await accountService.setAccountData(accountData);

      await Get.to(() => HomePage());

      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    usernameController;
    passwordController;
  }

  String? validuser(String value) {
    if (value.length < 1) {
      return "provide user";
    }
    return null;
  }

  String? valipass(String value) {
    if (value.length < 4) {
      return "provide valid password";
    }
    return null;
  }

  checkLogin() async {
    var isValidate = Loginformkey.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      loginnApi();
    }
    Loginformkey.currentState!.save();
  }
}
