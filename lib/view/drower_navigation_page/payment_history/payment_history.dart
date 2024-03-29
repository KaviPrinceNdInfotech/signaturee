import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/controllers/payment_history_controller.dart';
import 'package:sizer/sizer.dart';

class PaymentHistory extends StatelessWidget {
  PaymentHistory({Key? key}) : super(key: key);

  PaymentDetailController _paymentcontroller =
      Get.put(PaymentDetailController());

  final List<String> text0 = [
    '31 Jan 2021',
    '12 Jan 2020',
    '12 Mar 2019',
    '23 Jul 2017',
    '20 May 2016',
  ];
  final List<String> text1 = [
    'Rs.5000',
    'Rs.8500',
    'Rs.9500',
    'Rs.6500',
    'Rs.5500',
  ];

  @override
  Widget build(BuildContext context) {
    final drFeeGst = double.parse(
        "${(_paymentcontroller.paymentHisModel?.totalCost?.toDouble())! - ((_paymentcontroller.paymentHisModel?.balance?.toDouble())!).toInt()}");
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Fee',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Obx(
        () => (_paymentcontroller.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _paymentcontroller.paymentHisModel?.data == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
                    child: Container(
                      height: 94.5.h,
                      width: 100.w,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 12.h,
                            width: 100.w,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 4.h,
                                      width: 50.w,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'INR',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red,
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Text(
                                            "Rs:${_paymentcontroller.paymentHisModel?.balance!.toInt()}",
                                            // 'Rs. 107000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red,
                                              fontSize: 19.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'FEE DUE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.redAccent,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 0.1,
                          ),
                          Material(
                            elevation: 2,
                            child: Container(
                              height: 9.h,
                              width: 100.w,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 3.h,
                                        width: 60.w,
                                        child: Row(
                                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'INR',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Text(
                                              "Rs.${drFeeGst.toInt()}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.green,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Text(
                                              // "${drFeeGst.toInt()}",
                                              'Paid',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.green,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 3.h,
                                        width: 60.w,
                                        child: Row(
                                          ///crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'INR',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Text(
                                              "Rs.${_paymentcontroller.paymentHisModel?.totalCost?.toInt()}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.red,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Text(
                                              'Total',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.red,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.7.h),
                            child: PhysicalModel(
                              elevation: 3,
                              color: Colors.grey,
                              child: Container(
                                height: 9.h,
                                width: 100.w,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 3.h,
                                          width: 60.w,
                                          child: Row(
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Initial Payment on',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.red,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text(
                                                '',
                                                //  '01 Mar 2018',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.green,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 3.h,
                                          width: 60.w,
                                          child: Row(
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Member Fee',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text(
                                                "Rs.${_paymentcontroller.paymentHisModel?.initialPayment?.toInt()}",
                                                // 'Rs. 5000',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 0.05.h,
                                ),
                                PhysicalModel(
                                  color: Colors.white70,
                                  //shadowColor: AppColors.golden,
                                  elevation: 0,
                                  child: Container(
                                    height: 48.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                    ),
                                    child: ListView.builder(
                                        //physics: NeverScrollableScrollPhysics(),
                                        itemCount: _paymentcontroller
                                            .paymentHisModel?.data?.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 0.4.h,
                                            ),
                                            child: PhysicalModel(
                                              color: Colors.white,
                                              shadowColor: AppColors.grey400,
                                              elevation: 3,
                                              child: Container(
                                                height: 9.6.h,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.grey.shade300,
                                                      width: 0.5),
                                                  color: Colors.white12,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "${_paymentcontroller.paymentHisModel?.data?[index].userAmcsDeuDate?.year}",
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .themecolors,
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            Text(
                                                              "/${_paymentcontroller.paymentHisModel?.data?[index].userAmcsDeuDate?.month}",
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .themecolors,
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            Text(
                                                              "/${_paymentcontroller.paymentHisModel?.data?[index].userAmcsDeuDate?.day}",
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .themecolors,
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    4.w),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Membership Free',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontSize: 9.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            Text(
                                                              "Rs.${_paymentcontroller.paymentHisModel?.data?[index].userAmcsAmount?.toInt()}",
                                                              // text1[index],
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 9.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}
