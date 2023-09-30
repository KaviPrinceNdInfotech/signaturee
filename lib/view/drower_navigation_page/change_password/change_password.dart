import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/view/home_page/home_pageee.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/change_password_controller.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  //
  // BookHolidayController _bookHolidayController =
  // Get.put(BookHolidayController());
  ChangepasswordController _changepasswordController =
      Get.put(ChangepasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.themecolors,
        leading: InkWell(
            onTap: () {
              Get.offAll(() => HomePage());
            },
            child: Icon(
              Icons.arrow_back,
            )),
        title: Text(
          'Change Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Form(
        key: _changepasswordController.Changepasskey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              // height: 75.5.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.purple.shade600, width: 4)),
              child:
                  //Column(
                  //children: [
                  Column(
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
                        'Enter the correct passwords',
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
                        'Old Password',
                        style: TextStyle(
                          color: AppColors.themecolors,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        // height: 5.8.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.themecolors, width: 1),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller:
                                _changepasswordController.oldPasswordController,
                            validator: (value) {
                              return _changepasswordController
                                  .validoldpassword(value!);
                            },
                            cursorColor: AppColors.themecolors,
                            style: TextStyle(
                                color: AppColors.themecolors, fontSize: 10.sp),
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
                              hintText: ' Enter Old Password',
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
                        'New Password',
                        style: TextStyle(
                          color: AppColors.themecolors,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        //height: 5.5.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.themecolors, width: 1),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller:
                                _changepasswordController.passwordController,
                            validator: (value) {
                              return _changepasswordController
                                  .validpassword(value!);
                            },
                            cursorColor: AppColors.themecolors,
                            style: TextStyle(
                                color: AppColors.themecolors, fontSize: 10.sp),
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
                              hintText: 'Enter New password',
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
                        'Confirm Password',
                        style: TextStyle(
                          color: AppColors.themecolors,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        // height: 5.5.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.themecolors, width: 1),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: _changepasswordController
                                .confirmPasswordController,
                            validator: (value) {
                              return _changepasswordController
                                  .validconfirmpass(value!);
                            },
                            cursorColor: AppColors.themecolors,
                            style: TextStyle(
                                color: AppColors.themecolors, fontSize: 10.sp),
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
                              hintText: 'Re-enter confirm password',
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
                  SizedBox(
                    height: 0.h,
                  ),
                  //Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                    child: InkWell(
                      onTap: () {
                        _changepasswordController.checkpasswordd();
                      },
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
                  ),
                ],
              ),

              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
