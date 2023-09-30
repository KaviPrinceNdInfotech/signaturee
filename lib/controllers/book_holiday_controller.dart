// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:signature/services_apis/services_api.dart';
//
// class BookholidayController extends GetxController {
//   RxBool isLoading = false.obs;
//   final GlobalKey<FormState> Bookholidaykey =
//       GlobalKey(debugLabel: "Feedbackkey");
//
//   TextEditingController bookingdateController = TextEditingController();
//   TextEditingController checkoutDateController = TextEditingController();
//
//   TextEditingController cityController = TextEditingController();
//
//   TextEditingController noOfAdultsController = TextEditingController();
//   TextEditingController kidsController = TextEditingController();
//   TextEditingController noOfRoomsController = TextEditingController();
//
// //NoOfRooms
//   // TextEditingController passwordController = TextEditingController();
//
//   void bookholidayApi() async {
//     isLoading(true);
//     http.Response r = await ApiProvider.AddholidayApi(
//       bookingdateController.text,
//       checkoutDateController.text,
//       cityController.text,
//       noOfAdultsController.text,
//       kidsController.text,
//       noOfRoomsController.text,
//     );
//     if (r.statusCode == 200) {
//       isLoading(false);
//
//       ///Get.to(()=>page());
//     }
//   }
//
//   @override
//   void onInit() {
//     super.onInit();
//     bookingdateController;
//     checkoutDateController;
//     cityController;
//     noOfAdultsController;
//     kidsController;
//     noOfRoomsController;
//
//     // passwordController;
//   }
//
//   String? validcity(String value) {
//     if (value.length < 1) {
//       return "provide text";
//     }
//     return null;
//   }
//
//   String? validtext(String value) {
//     if (value.length < 1) {
//       return "provide text";
//     }
//     return null;
//   }
//
//   String? validnoOfAdults(String value) {
//     if (value.length < 1) {
//       return "provide text";
//     }
//     return null;
//   }
//
//   String? validkids(String value) {
//     if (value.length < 1) {
//       return "provide kids";
//     }
//     return null;
//   }
//
//   String? validnoOfRooms(String value) {
//     if (value.length < 1) {
//       return "provide no of rooms";
//     }
//     return null;
//   }
//
//   checkbooking() async {
//     var isValidate = Bookholidaykey.currentState!.validate();
//     if (!isValidate) {
//       return;
//     } else {
//       bookholidayApi();
//     }
//     Bookholidaykey.currentState!.save();
//   }
// }
