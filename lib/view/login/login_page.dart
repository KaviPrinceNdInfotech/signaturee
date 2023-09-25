import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/view/home_page/home_pageee.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.themecolors,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          //'https://images.unsplash.com/photo-1573663520878-8c38b10264fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'
                          //'https://plus.unsplash.com/premium_photo-1661883237884-263e8de8869b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2089&q=80'
                          //'https://images.unsplash.com/photo-1617859047452-8510bcf207fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'

                          'https://w0.peakpx.com/wallpaper/778/789/HD-wallpaper-hotel-angels-city-moon-new-new-york-night.jpg'
                          //'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                          //'https://i.pinimg.com/originals/01/96/c1/0196c1f3432b1a2ebac601dadb7b92cd.jpg'
                          ),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 5.7.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.themecolors, width: 1),
                      ),
                      child: Center(
                        child: TextField(
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
                            hintText: 'User Name',
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
                      height: 2.h,
                    ),
                    Container(
                      height: 5.7.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.themecolors, width: 1),
                      ),
                      child: Center(
                        child: TextField(
                          obscureText: true,
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
                            hintText: 'Password',
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
                      height: 2.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => HomePage());
                      },
                      child: Container(
                          height: 5.5.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.themecolors, width: 1),
                            color: AppColors.themecolors,
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 3.h,
              right: 0.w,
              left: 0.w,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 16.h,
                  width: 38.w,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('lib/assets/logo_signature.png'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
