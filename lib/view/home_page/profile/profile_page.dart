import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/controllers/profile_controllers.dart';
import 'package:signature/view/drower_navigation_page/change_password/change_password.dart';
import 'package:signature/view/home_page/update_profileee/updatee_profile_user.dart';
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
  ProfileController _profileController = Get.put(ProfileController());
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
      body: Obx(
        () => (_profileController.isLoading.value)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _profileController.getprofileModel == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.offAll(() => ChangePasswordPage());
                                    },
                                    child: Text(
                                      'Change Password',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(UpdateProfilePage());
                                    },
                                    child: Text(
                                      'Update Profile',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                        fontSize: 10.sp,
                                      ),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${_profileController?.getprofileModel?.memberName1.toString()}",
                                                // 'Kumar Prince',
                                                style: TextStyle(
                                                  color: AppColors.themecolors,
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "${_profileController?.getprofileModel?.email}",

                                                // 'kumarprince32323@gmail.com',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "${_profileController?.getprofileModel?.mobile1.toString()}",
                                                style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: InkWell(
                                                  onTap: () {
                                                    Get.to(UpdateProfilePage());
                                                  },
                                                  child: Text(
                                                    'Update',
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.8.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Membership Number:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.membershipNo.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                //    Membership Name 1',
                                                //     Membership Name 2',
                                                //     'Address',
                                                //     'City',
                                                //     'Mobile',
                                                //     'Alternate Mobile No.',
                                                //     'Email',
                                                //     'Date of Joining',
                                                //     'Validity',
                                                //     'Tenure',
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Membership Name 1:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.memberName1.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Membership Name 2:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.memberName2.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Address:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.address.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'City:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.city.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Mobile:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.mobile1.toString()}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Alternate mobile:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.mobile2}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Email:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.email}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Date of joining:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.dateOfJoining}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Validity:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.validity}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        'Tenure:',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.tenure}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                //Alternate Mobile No.
                                              ],
                                            ),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.8.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        "Type",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.type}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        "Season",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.season}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        "Apartment",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.apartment}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        "Occupancy",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.occupancy}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 34.5.w,
                                                      child: Text(
                                                        "Mode of Payment",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6.w,
                                                    ),
                                                    Text(
                                                      "${_profileController?.getprofileModel?.modeOfPayment}",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          // }),
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
      ),
    );
  }
}
