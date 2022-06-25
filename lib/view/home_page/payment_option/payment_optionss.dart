import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class PaymentOptions extends StatelessWidget {
  PaymentOptions({Key? key}) : super(key: key);
  final List<String> paymentmethod = [
    'Utility',
    'EMI',
    'Exchange',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Payment Option',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: PhysicalModel(
                color: Colors.grey,
                shadowColor: Colors.red.shade500,
                borderRadius: BorderRadius.circular(2),
                elevation: 7,
                child: Container(
                  height: 25.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: AppColors.golden,
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: Container(
                                height: 8.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    'Utility',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: Container(
                                height: 8.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    'EMI',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: Container(
                                height: 8.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    'Exchange',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              elevation: 5,
                              color: Colors.red,
                              shadowColor: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              child: Container(
                                height: 8.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    'Others',
                                    style: TextStyle(
                                      color: AppColors.themecolors,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
