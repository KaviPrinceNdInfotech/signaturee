import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/contact_us_controller.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  ContactusController _contactusController = Get.put(ContactusController());

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
      body: Obx(
        () => (_contactusController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _contactusController.contactusmodel == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
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
                              'L 28, Lajpat Nagar\n'
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
                              'Phone :: (011)40193528\n\n'
                              'Customer Care :: (011)40193529\n\n'
                              ''
                              'Email :: info@signaturelinkers.com\n\n'
                              ''
                              ''
                              'Website :: www.sinnaturegrandclub.com\n'
                              '',
                              // "${_contactusController.contactusmodel?.content.toString()}",
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
      ),
    );
  }
}
