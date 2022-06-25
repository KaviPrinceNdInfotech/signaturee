import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import 'book_holiday_controller.dart';

class BookHolidayPage extends StatelessWidget {
  BookHolidayPage({Key? key}) : super(key: key);

  BookHolidayController _bookHolidayController =
      Get.put(BookHolidayController());

  final List<String> text0 = [
    'RAMADAN CENTRAL',
    'ACHROL NIWAS(Presently not Associated)',
    'CAMBAY RESORT AND SPA',
    'AVALON RESORT',
    'RAMADA ENCORE',
    'OBETEL GRAND RESTORENT',
    'EAST BOURNE',
    'THE GOLDEN BEACH RESORT',
    'ARLIYAS RESORT',
    'ATULYA TAJ',
    'OBETEL GRAND RESTORENT',
    'EAST BOURNE',
    'THE GOLDEN BEACH RESORT',
    'ARLIYAS RESORT',
    'ATULYA TAJ',
  ];
  final List<String> text1 = [
    'GURGAON',
    'JAIPUR',
    'MUSSOORIE',
    'BANGALORE',
    'LONAVALA',
    'SHIMLA',
    'DAMAN',
    'UDAIPUR',
    'AGRA',
    'PURI',
    'SHIMLA',
    'DAMAN',
    'UDAIPUR',
    'AGRA',
    'PURI',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.themecolors,
        title: Text(
          'SignatureClub',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: 94.5.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.purple.shade600, width: 4)),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        height: 7.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: AppColors.themecolors,
                        ),
                        child: Center(
                          child: Text(
                            'Enter the following details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'City',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 5.8.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextField(
                                cursorColor: AppColors.themecolors,
                                style: TextStyle(
                                    color: AppColors.themecolors,
                                    fontSize: 10.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade200,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 2.w),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.red,
                                  //       width: 1,
                                  //     )),
                                  hintText: 'City',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),

                                  disabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Check-in Date',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _bookHolidayController.chooseDate();
                            },
                            child: Container(
                              height: 5.5.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(
                                    color: AppColors.themecolors, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Obx(() => Text(
                                      DateFormat("dd-MM-yyy")
                                          .format(_bookHolidayController
                                              .selectedDate.value)
                                          .toString(),
                                      style: TextStyle(fontSize: 12.sp),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No of Nights',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 5.5.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextField(
                                cursorColor: AppColors.themecolors,
                                style: TextStyle(
                                    color: AppColors.themecolors,
                                    fontSize: 10.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade200,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 2.w),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.red,
                                  //       width: 1,
                                  //     )),
                                  hintText: '1',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),

                                  disabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No of Adults',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 5.5.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextField(
                                cursorColor: AppColors.themecolors,
                                style: TextStyle(
                                    color: AppColors.themecolors,
                                    fontSize: 10.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade200,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 2.w),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.red,
                                  //       width: 1,
                                  //     )),
                                  hintText: '1',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),

                                  disabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No of Childs',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 5.5.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextField(
                                cursorColor: AppColors.themecolors,
                                style: TextStyle(
                                    color: AppColors.themecolors,
                                    fontSize: 10.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade200,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 2.w),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.red,
                                  //       width: 1,
                                  //     )),
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),

                                  disabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Age of Child',
                            style: TextStyle(
                              color: AppColors.themecolors,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 5.5.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextField(
                                cursorColor: AppColors.themecolors,
                                style: TextStyle(
                                    color: AppColors.themecolors,
                                    fontSize: 10.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade200,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 2.w),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.red,
                                  //       width: 1,
                                  //     )),
                                  hintText: '3',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),

                                  disabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: AppColors.themecolors,
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
