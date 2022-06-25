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
      backgroundColor: AppColors.themecolors,
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/778/789/HD-wallpaper-hotel-angels-city-moon-new-new-york-night.jpg'
                      //'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                      //'https://i.pinimg.com/originals/01/96/c1/0196c1f3432b1a2ebac601dadb7b92cd.jpg'
                      ),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
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
              SizedBox(
                height: 32.h,
              ),
              Container(
                height: 5.7.h,
                width: 55.w,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.themecolors, width: 1),
                ),
                child: Center(
                  child: TextField(
                    cursorColor: AppColors.themecolors,
                    style: TextStyle(
                        color: AppColors.themecolors, fontSize: 10.sp),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
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
                height: 2.h,
              ),
              Container(
                height: 5.7.h,
                width: 55.w,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.themecolors, width: 1),
                ),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    cursorColor: AppColors.themecolors,
                    style: TextStyle(
                        color: AppColors.themecolors, fontSize: 10.sp),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
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
                      border:
                          Border.all(color: AppColors.themecolors, width: 1),
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
    );
  }
}
