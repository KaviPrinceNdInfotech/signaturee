import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final List<String> text1 = [
    'Membership Number',
    'Membership Name 1',
    'Membership Name 2',
    'Address',
    'City',
    'Mobile',
    'Alternate Mobile No.',
    'Email',
    'Date of Joining',
    'Validity',
    'Tenure',
  ];

  final List<String> text2 = [
    'SAMPLE',
    'KUMAR PRINCE',
    'KAVI SINGH',
    'SURAJAGARHA',
    'LAKHISARAI',
    '0909090989',
    '0989766665',
    'kaviq1234@gmail.com',
    '01 Mar 2022',
    '01 Mar 2030',
    '10',
  ];

  final List<String> text3 = [
    'Type',
    'Season',
    'Apartment',
    'Occupancy',
    'Made of Payment',
  ];

  final List<String> text4 = [
    'REGULAR',
    'RED',
    'STUDIO',
    '2 PERSON',
    'CARD',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 94.5.h,
            width: 100.w,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        'Update Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        PhysicalModel(
                          color: Colors.white70,
                          shadowColor: AppColors.golden,
                          elevation: 2,
                          child: Container(
                            height: 12.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Kumar Prince',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    'kumarprince32323@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '7878789098',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Update',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        PhysicalModel(
                          color: Colors.white12,
                          shadowColor: AppColors.grey400,
                          elevation: 2,
                          child: Container(
                            height: 5.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'My Profile',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        PhysicalModel(
                          color: Colors.white70,
                          shadowColor: AppColors.golden,
                          elevation: 1,
                          child: Container(
                            height: 44.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: text1.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 0.8.h),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 34.5.w,
                                            child: Text(
                                              text1[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Text(
                                            text2[index],
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        PhysicalModel(
                          color: Colors.white12,
                          shadowColor: AppColors.grey400,
                          elevation: 2,
                          child: Container(
                            height: 5.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Membership Detail',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        PhysicalModel(
                          color: Colors.white70,
                          shadowColor: AppColors.golden,
                          elevation: 1,
                          child: Container(
                            height: 21.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: text3.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 0.8.h),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 34.5.w,
                                            child: Text(
                                              text3[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Text(
                                            text4[index],
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
