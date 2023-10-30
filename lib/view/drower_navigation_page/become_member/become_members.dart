import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/controllers/become_member_controller.dart';
import 'package:sizer/sizer.dart';

class BecomeMemberPage extends StatelessWidget {
  BecomeMemberPage({Key? key}) : super(key: key);
  BecomeMemberController _becomeMemberController =
      Get.put(BecomeMemberController());

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
      body: Form(
        key: _becomeMemberController.becomememberekey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: 89.5.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.purple.shade600, width: 4)),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.5.h,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            //height: 5.8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller:
                                    _becomeMemberController.nameController,
                                validator: (value) {
                                  return _becomeMemberController
                                      .valiname(value!);
                                },
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
                                  hintText: 'Name',
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
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            //height: 5.8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColors.themecolors,
                                controller:
                                    _becomeMemberController.emailController,
                                validator: (value) {
                                  return _becomeMemberController
                                      .validemail(value!);
                                },
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
                                  hintText: 'Email',
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
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            // height: 5.8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColors.themecolors,
                                controller:
                                    _becomeMemberController.mobileController,
                                validator: (value) {
                                  return _becomeMemberController
                                      .validmobile(value!);
                                },
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
                                  hintText: 'Mobile',
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
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            //height: 5.8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColors.themecolors,
                                controller:
                                    _becomeMemberController.DurationController,
                                validator: (value) {
                                  return _becomeMemberController
                                      .validduration(value!);
                                },
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
                                  hintText: 'Duration',
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
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            // height: 29.8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 1),
                            ),
                            child: Center(
                              child: TextFormField(
                                maxLines: 12,
                                cursorColor: AppColors.themecolors,
                                controller: _becomeMemberController
                                    .DescriptionController,
                                validator: (value) {
                                  return _becomeMemberController
                                      .validdescription(value!);
                                },
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
                                  hintText: 'Description Here',
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
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                    child: InkWell(
                      onTap: () {
                        _becomeMemberController.checkmembers();
                      },
                      child: Container(
                        height: 5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: AppColors.themecolors,
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
