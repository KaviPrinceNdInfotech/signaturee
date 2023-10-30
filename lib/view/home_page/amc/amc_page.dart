import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/amc_detailcontroller.dart';

class AmcPage extends StatelessWidget {
  AmcPage({Key? key}) : super(key: key);

  //RozarPayController

  AmcDetailController _amcDetailController = Get.put(AmcDetailController());

  final List<String> text0 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  final List<String> text1 = [
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
    '8500',
  ];

  final List<String> text2 = [
    '16 Mar 2022',
    '16 Mar 2022',
    '10 Mar 2022',
    '19 Mar 2022',
    '01 Mar 2022',
    '08 Mar 2022',
    '23 May 2022',
    '01 May 2022',
    '01 May 2022',
    '01 May 2022',
  ];

  final List<String> text3 = [
    'Paid',
    'Paid',
    'Paid',
    'Due',
    'Due',
    'Due',
    'Due',
    'Due',
    'Due',
    'Due',
  ];

  final List<String> text4 = [
    'Done',
    'Done',
    'Done',
    'Pay Online',
    'Pay Online',
    'Pay Online',
    'Pay Online',
    'Pay Online',
    'Pay Online',
    'Pay Online',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'AMC Detail',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Obx(
        () => (_amcDetailController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _amcDetailController.getamcdetails?.amcDetail == null
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
                            height: 6.h,
                            color: Colors.purple.shade700,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SI.No',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    'AMOUNT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    'DUE DATE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  // Text(
                                  //   'STATUS',
                                  //   style: TextStyle(
                                  //     fontWeight: FontWeight.w500,
                                  //     color: Colors.white,
                                  //     fontSize: 10.sp,
                                  //   ),
                                  // ),
                                  Text(
                                    'PAYMENT STATUS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 0.1.h,
                                ),
                                PhysicalModel(
                                  color: Colors.white70,
                                  //shadowColor: AppColors.golden,
                                  elevation: 3,
                                  child: Container(
                                    height: 60.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                    ),
                                    child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: _amcDetailController
                                            .getamcdetails?.amcDetail?.length,
                                        // text0.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 0.4.h,
                                            ),
                                            child: PhysicalModel(
                                              color: Colors.white,
                                              shadowColor: AppColors.golden,
                                              elevation: 0.5,
                                              child: Container(
                                                height: 6.h,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.grey.shade300,
                                                      width: 0.5),
                                                  color: Colors.white12,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        //width: 4.5.w,
                                                        child: Text(
                                                          "${_amcDetailController.getamcdetails?.amcDetail?[index].submitYear.toString()}",
                                                          //text0[index],
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        // width: 7.5.w,
                                                        height: 2.h,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "₹${_amcDetailController.getamcdetails?.amcDetail?[index].amount.toString()}",
                                                            style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontSize: 9.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 22.5.w,
                                                        height: 2.h,
                                                        child: Text(
                                                          "${_amcDetailController.getamcdetails?.amcDetail?[index].dueDate.toString()}",
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey.shade700,
                                                            fontSize: 9.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      // Text(
                                                      //   "${_amcDetailController.getamcdetails?.amcDetail?[index].status.toString()}",
                                                      //   // _amcDetailController
                                                      //   //     .getamcdetails!
                                                      //   //     .amcDetail![index]
                                                      //   //     .submitYear
                                                      //   //     .toString(),
                                                      //
                                                      //   // text3[index],
                                                      //   style: TextStyle(
                                                      //     color: Colors
                                                      //         .grey.shade700,
                                                      //     fontSize: 9.sp,
                                                      //     fontWeight:
                                                      //         FontWeight.w400,
                                                      //   ),
                                                      // ),
                                                      SizedBox(
                                                        width: 15.w,
                                                        child: Text(
                                                          "${_amcDetailController.getamcdetails?.amcDetail?[index].status.toString()}",
                                                          // _amcDetailController
                                                          //     .getamcdetails!
                                                          //     .amcDetail![index]
                                                          //     .submitYear
                                                          //     .toString(),

                                                          //text4[index],
                                                          style: TextStyle(
                                                            color: Colors
                                                                .redAccent,
                                                            fontSize: 9.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
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
                                  height: 0.5.h,
                                ),
                                PhysicalModel(
                                  color: Colors.white70,
                                  shadowColor: AppColors.golden,
                                  elevation: 0,
                                  child: Container(
                                    height: 17.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListView.builder(
                                          //physics: NeverScrollableScrollPhysics(),
                                          itemCount: 3,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0.8.h),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      """In case of due/over due to AMC/
Maintenance free member(s) will not be
allowed to process any holidays.""",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 1.h,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      """note it""",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 1.h,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      """Pay your entire AMC and avail special
discount,gift hampers etc.""",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
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
  }
}
