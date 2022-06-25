import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);
  final List<String> notification = [
    'Hi this is kumar prince',
    'This is the signature club apps',
    'You have an idea about this?',
    'here so many functionality in this app',
    'This is available on play store and play store and app store',
    'It has a website',
    'it is the most famous club in india',
    'This is the good app for a user',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Notifications',
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
            SizedBox(
              height: 88.5.h,
              child: ListView.builder(
                  itemCount: notification.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: PhysicalModel(
                        elevation: 4,
                        shadowColor: Colors.white,
                        color: Colors.grey,
                        child: Container(
                          height: 7.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: AppColors.golden,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              notification[index],
                              style: TextStyle(
                                color: AppColors.themecolors,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
