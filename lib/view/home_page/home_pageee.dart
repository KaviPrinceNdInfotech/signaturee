//yellow…
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/controllers/amc_detailcontroller.dart';
import 'package:signature/controllers/associate_resort_controllers.dart';
import 'package:signature/controllers/login_controller.dart';
import 'package:signature/controllers/profile_controllers.dart';
import 'package:signature/view/drower_navigation_page/share_friends/share_friendsss.dart';
import 'package:signature/view/home_page/amc/amc_page.dart';
import 'package:signature/view/home_page/book_holiday/book_holiday_controller.dart';
import 'package:signature/view/home_page/book_holiday/book_holidayss.dart';
import 'package:signature/view/home_page/profile/profile_page.dart';
import 'package:signature/view/home_page/terms_member/terms_of_member.dart';
import 'package:signature/view/home_page/voucher/voucher_page.dart';
import 'package:signature/view/login/login_page.dart';
import 'package:signature/widgets/drower_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:url_launcher/url_launchliday/my_holidayss.dart';

import '../../controllers/feedback_controller.dart';
import '../../controllers/home_controller.dart';
import '../../utils/circular_loader.dart';
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
  UserHomepageController _userHomepageController =
      Get.put(UserHomepageController());
  GetAssociateController _getAssociateController =
      Get.put(GetAssociateController());
  Feedbackontroller _feedbackontroller = Get.put(Feedbackontroller());

  BookHolidayController _bookHolidayController =
      Get.put(BookHolidayController());
  LoginController _loginController = Get.put(LoginController());

  ProfileController _profileController = Get.put(ProfileController());

  AmcDetailController _amcDetailController = Get.put(AmcDetailController());

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

    ///todo: working condition....................
    return Scaffold(
      key: _key2,
      backgroundColor: AppColors.g10,
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: AppColors.g10,
        leading: IconButton(
          icon: Icon(
            Icons.dehaze_rounded,
            size: 23,
            color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    _launchURLEmail();
                  },
                  icon: Icon(
                    Icons.email_outlined,
                    size: 23,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),

      drawer: MainDrawer(),

      ///............................
      body: SafeArea(
        child: Container(
          // height: 80.h,
          width: 100.w,
          color: AppColors.g12,
          child: Column(
            children: [
              Container(
                height: 27.h,
                width: 100.w,
                color: Colors.grey,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.0.h, vertical: 0.h),
                  child: Mycrusial(),
                ),
              ),
              Spacer(),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 5 / 9,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 60 + 15.4,
                  ),
                  itemCount: productname.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () async {
                        if (index == 0) {
                          _profileController.update();
                          await _profileController.profileApi();
                          _profileController.onInit();
                          await Get.to(() => ProfilePage());
                          //Get.to(() => WomenPage());
                          //Get.to(() => WaterTracking());
                        } else if (index == 1) {
                          await _amcDetailController.amcdetailApi();
                          _amcDetailController.onInit();
                          await Get.to(() => AmcPage());
                        } else if (index == 2) {
                          Get.to(() => PaymentOptions());
                          //Get.to(() => HotDeals());
                          //Get.to(() => WalkTracking());
                        } else if (index == 3) {
                          // whatsAppOpen();
                          Get.to(Sharelinkweight());
                          //  _launchWhatsapp();
                          ///Todo this is showing dark and white mode
                          ///
                          //Get.to(() => TheJwelleryStore());

                          //Get.to(() => CarouselDemo());
                        } else if (index == 4) {
                          await _getAssociateController.associateresorttApi();
                          _getAssociateController.update();
                          //_getAssociateController.onInit();
                          await Get.to(() => AssociatePage());
                        } else if (index == 5) {
                          _bookHolidayController.onInit();
                          Get.offAll(() => BookHolidayPage());
                          _bookHolidayController.dispose();
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
                          //height: 10.h,
                          alignment: Alignment.center,

                          //child: Text(myProducts[index]["name"]),
                          decoration: BoxDecoration(
                              color: AppColors.g10,
                              borderRadius: BorderRadius.circular(0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                producticons[index],
                                size: size.width * 0.09,
                                color: Colors.white,
                                //AppColors.g11,
                                //AppColors.themecolors,
                              ),
                              Text(
                                productname[index],
                                style: TextStyle(
                                    color: Colors.white,

                                    // color: AppColors.g13,
                                    //Colors.grey.shade600,
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              Spacer(),

              ///..........

              // SizedBox(
              //   height: 0.3.h,
              // ),

              ///.......
              // SizedBox(
              //   height: 0.03.h,
              // ),
              Expanded(
                flex: 40,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: productname1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            //horizontal: 0.w,
                            vertical: 0.1.h),
                        child: PhysicalModel(
                          color: Colors.black,
                          shadowColor: Colors.white,
                          elevation: 4,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(0),
                          child: InkWell(
                            onTap: () async {
                              if (index == 0) {
                                ///....logout
                                _loginController.onInit();
                                CallLoader.loader();
                                await Future.delayed(Duration(seconds: 2));
                                CallLoader.hideLoader();
                                await SharedPreferences.getInstance()
                                    .then((value) => value.clear());
                                //Get.back();
                                await Get.offAll(() => LoginPage());
                                //Get.to(() => ProfilePage());
                                // Get.to(() => LoginPage());
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
                                    content: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 37.h,
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
                                            child: TextFormField(
                                              key: _feedbackontroller
                                                  .Feedbackkey,
                                              controller: _feedbackontroller
                                                  .feedBaclMessageController,
                                              validator: (value) {
                                                return _feedbackontroller
                                                    .validtext(value!);
                                              },
                                              maxLines: 21,
                                              cursorColor:
                                                  AppColors.themecolors,
                                              style: TextStyle(
                                                  color: AppColors.themecolors,
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
                                            onTap: () async {
                                              await _feedbackontroller
                                                  .feedbackApi();
                                              //await Get.to(HomePage());
                                            },
                                            child: Container(
                                                height: 7.h,
                                                width: 85.w,
                                                decoration: BoxDecoration(
                                                  color: AppColors.themecolors,
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
                                      ),
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
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.55.w),
                              child: Container(
                                //height: 12.h,
                                width: 24.w,
                                color: AppColors.g10,
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      product1icons[index],
                                      color: Colors.white,

                                      //color: AppColors.g12,
                                      size: 26,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      productname1[index],
                                      style: TextStyle(
                                          color: Colors.white,

                                          //color: AppColors.g12,
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Spacer(),
              // Spacer(),
              // SizedBox(
              //   height: size.height * 0.02,
              // ),
            ],
          ),
        ),
      ),

      ///.............
    );
  }
}

class Mycrusial extends StatelessWidget {
  final _sliderKey = GlobalKey();
  Mycrusial({Key? key}) : super(key: key);
  UserHomepageController _userHomepageController =
      Get.put(UserHomepageController());

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final bool _isPlaying = true;

  @override
  Widget build(BuildContext context) {
    var imgpath = 'https://new.signatureresorts.in/Images/';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: Obx(
          () => (_userHomepageController.isLoading.value)
              ? Center(child: CircularProgressIndicator())
              : _userHomepageController.getuserbannerlist?.banner == null
                  ? Center(
                      child: Text('No data'),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: size.height * 0.28,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Material(
                            // color: MyTheme.ThemeColors,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: CarouselSlider.builder(
                                key: _sliderKey,
                                unlimitedMode: true,
                                autoSliderTransitionTime: Duration(seconds: 2),
                                slideBuilder: (index) {
                                  final items = _userHomepageController
                                      .getuserbannerlist?.banner;
                                  return Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Material(
                                      elevation: 12,
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        height: size.height * 38,
                                        width: size.width,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.cyan.shade800,
                                                width: 3),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '$imgpath${items?[index].bannerPath}' ??
                                                        ''),
                                                fit: BoxFit.cover,
                                                onError: (error, stackTrace) {
                                                  Text("No Image Found");
                                                  // .log(error, stackTrace);
                                                })),
                                      ),
                                    ),
                                  );
                                },
                                slideTransform: DefaultTransform(),
                                slideIndicator: CircularSlideIndicator(
                                  indicatorBorderWidth: 2,
                                  indicatorRadius: 4,
                                  itemSpacing: 15,
                                  currentIndicatorColor: Colors.white,
                                  padding: EdgeInsets.only(bottom: 0),
                                ),
                                itemCount: _userHomepageController
                                    .getuserbannerlist!.banner!.length,
                                enableAutoSlider: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
        ));
  }
}
