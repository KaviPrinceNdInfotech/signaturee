import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/terms_mem_controller.dart';

class TermsMemberPage extends StatelessWidget {
  TermsMemberPage({Key? key}) : super(key: key);

  TermsMembershipController _termsMembershipController =
      Get.put(TermsMembershipController());

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
          'SignatureClub',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Obx(
        () => (_termsMembershipController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _termsMembershipController.termsmemModel == null
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
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                                " ${_termsMembershipController.termsmemModel?.terms.toString()}"
                                // 'Lorem Ipsum is simply dummy text of the printing '
                                // 'and typesetting industry. Lorem Ipsum has been the'
                                // ' industry\'s standard dummy text ever since the 1500s, '
                                // 'when an unknown printer took a galley of type and '
                                // 'scrambled it to make a type specimen book. It has'
                                // ' survived not only five centuries, but also the leap'
                                // ' into electronic typesetting, remaining essentially'
                                // ' unchanged. It was popularised in the 1960s with the'
                                // ' release of Letraset sheets containing Lorem Ipsum '
                                // 'passages, and more recently with desktop publishing'
                                // ' software like Aldus PageMaker including versions of '
                                // 'Lorem Ipsum.'
                                )
                          ],
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
