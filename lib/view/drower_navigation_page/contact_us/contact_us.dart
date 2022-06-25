import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Contact Us',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Signature Linker Private Limited',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Corporate & Regd.Office:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'IInd- L 28, Lajpat Nagar\n'
                  'Part -II, New Delhi 10024\n'
                  'India',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Phone: 3045907399\n\n'
                  'Customer Care : 3089749085\n\n'
                  ''
                  'Email: prince@gmail.com\n\n'
                  ''
                  ''
                  'Website: www.sinnatureprincekavi.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.sp,
                    //fontWeight: FontWeight.bold,
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
