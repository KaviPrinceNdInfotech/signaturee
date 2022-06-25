import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class FaqPage extends StatelessWidget {
  FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'FAQ',
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
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text('Lorem Ipsum is simply dummy text of the printing '
                    'and typesetting industry. Lorem Ipsum has been the'
                    ' industry\'s standard dummy text ever since the 1500s, '
                    'when an unknown printer took a galley of type and '
                    'scrambled it to make a type specimen book. It has'
                    ' survived not only five centuries, but also the leap'
                    ' into electronic typesetting, remaining essentially'
                    ' unchanged. It was popularised in the 1960s with the'
                    ' release of Letraset sheets containing Lorem Ipsum '
                    'passages, and more recently with desktop publishing'
                    ' software like Aldus PageMaker including versions of '
                    'Lorem Ipsum.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
