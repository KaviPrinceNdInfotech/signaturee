import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class MyHolidayPage extends StatelessWidget {
  MyHolidayPage({Key? key}) : super(key: key);

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
    '16',
    '16',
    '10',
    '19',
    '01',
    '08',
    '23',
    '01',
    '01',
    '01',
  ];
  final List<String> text1_1 = [
    '2022',
    '2022',
    '2019',
    '2020',
    '2020',
    '2021',
    '2021',
    '2019',
    '2020',
    '2019',
  ];
  final List<String> text1_2 = [
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'May',
    'May',
    'May',
    'May',
  ];

  final List<String> text2 = [
    '16',
    '16',
    '10',
    '19',
    '01',
    '08',
    '23',
    '01',
    '01',
    '01',
  ];

  final List<String> text2_2 = [
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'Mar',
    'May',
    'May',
    'May',
    'May',
  ];

  final List<String> text2_1 = [
    '2022',
    '2022',
    '2019',
    '2020',
    '2020',
    '2021',
    '2021',
    '2019',
    '2020',
    '2019',
  ];

  final List<String> text3 = [
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
    '6 Night',
  ];
  final List<String> text3_1 = [
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
    '7 Days',
  ];
  final List<String> text3_2 = [
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
    'Holiday',
  ];

  final List<String> text4 = [
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
    'Expired',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'My Holidays',
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
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Column(
              children: [
                Container(
                  height: 4.h,
                  color: Colors.white24,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your status is',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 10.sp,
                          ),
                        ),
                        Text(
                          'Active',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.themecolors,
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 0.1.h,
                    ),
                    PhysicalModel(
                      color: Colors.white70,
                      //shadowColor: AppColors.golden,
                      elevation: 0,
                      child: Container(
                        height: 83.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: ListView.builder(
                            //physics: NeverScrollableScrollPhysics(),
                            itemCount: text0.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0.4.h,
                                ),
                                child: PhysicalModel(
                                  color: Colors.white,
                                  shadowColor: AppColors.golden,
                                  elevation: 0.5,
                                  child: Container(
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 0.5),
                                      color: Colors.white12,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          PhysicalModel(
                                            color: Colors.grey,
                                            elevation: 2,
                                            shadowColor: Colors.grey.shade700,
                                            shape: BoxShape.circle,
                                            child: Container(
                                              width: 5.5.w,
                                              height: 3.h,
                                              decoration: BoxDecoration(
                                                  color: AppColors.golden,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: AppColors
                                                          .themecolors)),
                                              child: Center(
                                                child: Text(
                                                  text0[index],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 10.w,
                                            height: 9.h,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        AppColors.themecolors)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  text1[index],
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text1_1[index],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text1_2[index],
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.themecolors,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            FontAwesomeIcons.arrowsLeftRight,
                                            color: AppColors.themecolors,
                                            size: 25.sp,
                                          ),
                                          Container(
                                            width: 10.w,
                                            height: 9.h,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        AppColors.themecolors)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  text2[index],
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text2_1[index],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text2_2[index],
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.themecolors,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 13.w,
                                            height: 9.h,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  text3[index],
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text3_1[index],
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  text3_2[index],
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 11.w,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline_rounded,
                                                  color: AppColors.themecolors,
                                                ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Text(
                                                  text4[index],
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 7.sp,
                                                    fontWeight: FontWeight.w400,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
