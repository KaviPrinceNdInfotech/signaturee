import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/controllers/amc_detailcontroller.dart';
import 'package:signature/controllers/rozarpay_controller.dart';
import 'package:signature/view/home_page/emi_amc_details/emi_amc_page.dart';
import 'package:signature/view/payment_post_page/post_payment_pagee.dart';
import 'package:sizer/sizer.dart';

class PaymentOptions extends StatelessWidget {
  PaymentOptions({Key? key}) : super(key: key);

  final RozarPayController _rozarPayController = Get.put(RozarPayController());

  AmcDetailController _amcDetailController = Get.put(AmcDetailController());

  //_rozarPayController.openCheckout();
  final List<String> paymentmethod = [
    'Utility',
    'EMI',
    'Exchange',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Payment Option',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: PhysicalModel(
                color: Colors.grey,
                shadowColor: Colors.red.shade500,
                borderRadius: BorderRadius.circular(2),
                elevation: 7,
                child: Container(
                  height: 25.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: AppColors.golden,
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: InkWell(
                                onTap: () {
                                  Get.to(Post_payment_pagge());
                                  // _rozarPayController.openCheckout();
                                },
                                child: Container(
                                  height: 8.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Utility',
                                      style: TextStyle(
                                        color: AppColors.themecolors,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: InkWell(
                                onTap: () async {
                                  await _amcDetailController.amcdueApi();
                                  await Get.to(EmiAmcPage());

                                  ///Get.to(Post_payment_pagge());

                                  //_rozarPayController.openCheckout();
                                },
                                child: Container(
                                  height: 8.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EMI',
                                      style: TextStyle(
                                        color: AppColors.themecolors,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: InkWell(
                                onTap: () {
                                  Get.to(Post_payment_pagge());
                                  //_rozarPayController.openCheckout();
                                },
                                child: Container(
                                  height: 8.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Exchange',
                                      style: TextStyle(
                                        color: AppColors.themecolors,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: InkWell(
                                onTap: () {
                                  Get.to(Post_payment_pagge());
                                  // _rozarPayController.openCheckout();
                                },
                                child: Container(
                                  height: 8.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Others',
                                      style: TextStyle(
                                        color: AppColors.themecolors,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
