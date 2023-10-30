import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/controllers/post_payment_emi_report.dart';
import 'package:signature/controllers/profile_controllers.dart';

//import '../post_order_controller/post_order_controller.dart';

class RozarPayController extends GetxController {
  //get isLoading => null;

  RxBool isLoading = false.obs;
  PostPaymentttController _postPaymentttController =
      Get.put(PostPaymentttController());
  //final CartController controller = Get.put(CartController());
  ProfileController _getProfileController = Get.put(ProfileController());
  // CheckoutController _checkoutController = Get.put(CheckoutController());
  //PostOrderController _postOrderController = Get.put(PostOrderController());

  @override
  void onInit() {
    super.onInit();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  late Razorpay _razorpay;

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void openCheckout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var Amcduepayment = preferences.getString("Amcduepayment");
    print("Fee545454eeedrramkunt: ${Amcduepayment}");

    var options = {
      'key': 'rzp_live_ltkMYFl7PwVGM9',
      //'key': 'rzp_test_aeRns0u8gPpOUK',
      'amount': double.parse("${Amcduepayment}") * 100,

      ///todo........................new..........................28 feb............
      // '${_checkoutController.checkoutModel?.result?.totalCost.toString()}') * 100,
      //var amc = int.parse('${controller.cartListModel!.totalPrice}');
      //"${controller.cartListModel!.totalPrice }",
      // 'Order_id':orderId,
      'name': _getProfileController.getprofileModel?.memberName1.toString(),
      //'Kumar Prince',
      'timeout': 60 * 5,
      'description': 'Do Payment',
      'prefill': {
        'contact': _getProfileController.getprofileModel?.mobile1.toString(),
        //'7019380053',
        'email': _getProfileController.getprofileModel?.email.toString(),
        //'kumarprince261299@gmail.com'
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  // void handlerPaymentSuccess() {
  //   Get.to(Itemsbuy());
  // }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Get.snackbar("SUCCESS", "ID: ${response.paymentId}");
    print('payment sucess');

    _postPaymentttController.postpaymentttApi().then((statusCode) {
      // if (statusCode == 200) {
      //   ///This is the main thing to provide updated list history...
      //   //_medicineHistoryController.medicineorderhistoryApi();
      //
      //   ///nov 14....................................
      //   // Get.to(LabHistoryUser());
      //   Get.to(UserHomePage());
      //   _medicineHistoryController.update();
      // } else {
      //   // SHow
      // }
    });
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.snackbar(
        "ERROR", "CODE: ${response.code}  MESSAGE:${response.message}");

    print('payment fail');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar("EXTERNAL WALLET", "WALLET NAME: ${response.walletName}");
  }
}
