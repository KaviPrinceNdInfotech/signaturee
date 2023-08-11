import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/view/home_page/amc/amc_page.dart';
import 'package:signature/view/home_page/book_holiday/book_holidayss.dart';
import 'package:signature/view/home_page/crusial_slider.dart';
import 'package:signature/view/home_page/profile/profile_page.dart';
import 'package:signature/view/home_page/terms_member/terms_of_member.dart';
import 'package:signature/view/home_page/voucher/voucher_page.dart';
import 'package:signature/view/login/login_page.dart';
import 'package:signature/widgets/drower_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:url_launcher/url_launchliday/my_holidayss.dart';

import 'associate_restorent/assosiate_restorent.dart';
import 'my_holiday/my_holidayss.dart';
import 'notificationss/notificatrions_page.dart';
import 'payment_option/payment_optionss.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> productname = [
    'Profile',
    'AMC',
    'Payment',
    'Refer to Friends',
    'Associate Resorts',
    'Book a Holiday',
    'My Vacations',
    'Terms of Membership',
  ];

  final List<IconData> producticons = [
    Icons.person_rounded,
    Icons.request_quote_outlined,
    Icons.cases,
    Icons.share_outlined,
    Icons.home_work,
    Icons.holiday_village,
    Icons.card_giftcard_outlined,
    Icons.card_membership,
  ];

  final List<IconData> product1icons = [
    Icons.logout,
    Icons.backpack,
    Icons.email_outlined,
    Icons.payment,
  ];
  final List<String> productname1 = [
    'Logout',
    'Voucher',
    'Feedback',
    'Support',
  ];
  _launchURLBrowser() async {
    var url = Uri.parse("tel:+91 7019380052");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //from here whats app...............
  _launchWhatsapp() async {
    const url = "https://wa.me/?text=YourTextHere";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void whatsAppOpen() async {
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWhatsapp(
          phone: "5534992016100", message: "Hello, flutter_launch");
    } else {
      print('error');
    }
  }

  _launchURLEmail() async {
    var url = Uri.parse(
        //'https://protocoderspoint.com/'
        "mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int pageIndex = 0;
    GlobalKey<ScaffoldState> _key2 = GlobalKey();
    return Scaffold(
      key: _key2,
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: AppColors.themecolors,
        leading: IconButton(
          icon: Icon(
            Icons.dehaze_rounded,
            size: 23,
          ),
          onPressed: () {
            _key2.currentState!.openDrawer();
          },
        ),
        title: Text(
          'SignatureClub',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  disabledColor: Colors.white,
                  splashColor: AppColors.themecolors,
                  focusColor: AppColors.themecolors,
                  onPressed: () {
                    Get.to(() => NotificationPage());
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    size: 23,
                  )),
              IconButton(
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber('+911140193528');
                    //launch('tel:7019380053');
                    // _launchURLBrowser();
                    //launch('tel:+91 7019380052');
                    print('call');
                  },
                  icon: Icon(
                    Icons.local_phone_outlined,
                    size: 23,
                  )),
              IconButton(
                  onPressed: () {
                    _launchURLEmail();
                  },
                  icon: Icon(
                    Icons.email_outlined,
                    size: 23,
                  )),
            ],
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: 100.h,
            width: 100.w,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.0.h, vertical: 0.h),
                  child: Container(
                    height: 27.h,
                    width: 100.w,
                    color: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.4.h, vertical: 0.5.h),
                      child: Mycrusial(),
                    ),
                  ),
                ),
                //Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.h),
                  child: SizedBox(
                    height: 44.h,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 290,
                          childAspectRatio: 5 / 9,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 7,
                          mainAxisExtent: 60 + 21,
                        ),
                        itemCount: productname.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Get.to(() => ProfilePage());
                                //Get.to(() => WomenPage());
                                //Get.to(() => WaterTracking());
                              } else if (index == 1) {
                                Get.to(() => AmcPage());
                              } else if (index == 2) {
                                Get.to(() => PaymentOptions());
                                //Get.to(() => HotDeals());
                                //Get.to(() => WalkTracking());
                              } else if (index == 3) {
                                // whatsAppOpen();
                                _launchWhatsapp();

                                ///Todo this is showing dark and white mode
                                ///
                                //Get.to(() => TheJwelleryStore());

                                //Get.to(() => CarouselDemo());
                              } else if (index == 4) {
                                Get.to(() => AssociatePage());
                              } else if (index == 5) {
                                Get.to(() => BookHolidayPage());
                              } else if (index == 6) {
                                Get.to(() => MyHolidayPage());
                              } else if (index == 7) {
                                Get.to(() => TermsMemberPage());
                              }
                            },
                            child: PhysicalModel(
                              color: Colors.grey,
                              shadowColor: Colors.white,
                              elevation: 2,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(0),
                              child: Container(
                                height: 10.h,
                                alignment: Alignment.center,

                                //child: Text(myProducts[index]["name"]),
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      producticons[index],
                                      size: 20,
                                      color: AppColors.themecolors,
                                    ),
                                    Text(
                                      productname[index],
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                //Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: SizedBox(
                    height: 17.h,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: productname1.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 1.w,
                              // vertical: 0.h
                            ),
                            child: PhysicalModel(
                              color: Colors.grey,
                              shadowColor: Colors.white,
                              elevation: 7,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(0),
                              child: InkWell(
                                onTap: () {
                                  if (index == 0) {
                                    //Get.to(() => ProfilePage());
                                    Get.to(() => LoginPage());
                                    //Get.to(() => WaterTracking());
                                  } else if (index == 1) {
                                    Get.to(() => MyVoucherPage());
                                  } else if (index == 2) {
                                    Get.defaultDialog(
                                        title: "",
                                        //middleText: "",
                                        backgroundColor: Colors.transparent,
                                        // titleStyle:
                                        //     TextStyle(color: Colors.white),
                                        // middleTextStyle:
                                        //     TextStyle(color: Colors.white),
                                        //textConfirm: "Confirm",
                                        //textCancel: "Cancel",
                                        //cancelTextColor: Colors.white,
                                        //confirmTextColor: Colors.white,
                                        //buttonColor: Colors.red,
                                        barrierDismissible: true,
                                        radius: 0,
                                        content: Column(
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color:
                                                          AppColors.themecolors,
                                                      width: 3),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'lib/assets/rotate2.jpeg'),
                                                    fit: BoxFit.fill,
                                                  )),
                                              child: TextField(
                                                maxLines: 21,
                                                cursorColor:
                                                    AppColors.themecolors,
                                                style: TextStyle(
                                                    color:
                                                        AppColors.themecolors,
                                                    fontSize: 10.sp),
                                                decoration: InputDecoration(
                                                  //fillColor: Colors.grey.shade200,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 2.h,
                                                          horizontal: 2.w),
                                                  // border: OutlineInputBorder(
                                                  //     borderRadius: BorderRadius.circular(0),
                                                  //     borderSide: BorderSide(
                                                  //       color: Colors.red,
                                                  //       width: 1,
                                                  //     )),
                                                  hintText: 'Your  Feedback',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w500),

                                                  disabledBorder:
                                                      InputBorder.none,
                                                  border: InputBorder.none,
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Container(
                                                  height: 7.h,
                                                  width: 85.w,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColors.themecolors,
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "Send",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ))),
                                            ),
                                          ],
                                        ));
                                    //Get.to(() => HotDeals());
                                    //Get.to(() => WalkTracking());
                                  } else if (index == 3) {
                                    FlutterPhoneDirectCaller.callNumber(
                                        '+911140193528');
                                    //launch('tel:7019380053');
                                    // _launchURLBrowser();
                                    //launch('tel:+91 7019380052');
                                    print('call');

                                    ///Todo this is showing dark and white mode
                                    ///
                                    //Get.to(() => TheJwelleryStore());

                                    //Get.to(() => CarouselDemo());
                                  }
                                },
                                child: Container(
                                  //height: 2.h,
                                  width: 22.5.w,
                                  color: Colors.white70,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        product1icons[index],
                                        color: AppColors.themecolors,
                                        size: 26,
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        productname1[index],
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                //Spacer(),
                // SizedBox(
                //   height: size.height * 0.02,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
