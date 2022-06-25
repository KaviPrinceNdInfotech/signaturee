import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/view/login/login_page.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      body: Stack(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    // 'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                    'https://i.pinimg.com/originals/60/d8/44/60d844679e07db517c19fdc5dd7af089.gif',
                    // 'https://static.onecms.io/wp-content/uploads/sites/28/2021/01/04/base-grand-hyatt-JUMP0121.jpg'
                  ),
                  fit: BoxFit.fill,
                )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/logo_signature.png',
                        height: 40.h,
                        width: 65.w,
                      ),
                      if (Platform.isIOS)
                        CupertinoActivityIndicator(
                          radius: 20,
                        )
                      else
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
