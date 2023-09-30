import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/constant/colors.dart';
import 'package:signature/view/drower_navigation_page/aboutus/about_us.dart';
import 'package:signature/view/drower_navigation_page/become_member/become_members.dart';
import 'package:signature/view/drower_navigation_page/contact_us/contact_us.dart';
import 'package:signature/view/drower_navigation_page/faq/faq_pages.dart';
import 'package:signature/view/drower_navigation_page/gallery/gallery_page.dart';
import 'package:signature/view/drower_navigation_page/my_aggrements/my_aggrements.dart';
import 'package:signature/view/drower_navigation_page/payment_history/payment_history.dart';
import 'package:signature/view/drower_navigation_page/website/website_page.dart';
import 'package:signature/view/home_page/amc/amc_page.dart';
import 'package:signature/view/home_page/associate_restorent/assosiate_restorent.dart';
import 'package:signature/view/home_page/book_holiday/book_holidayss.dart';
import 'package:signature/view/home_page/my_holiday/my_holidayss.dart';
import 'package:signature/view/home_page/profile/profile_page.dart';
import 'package:signature/view/home_page/terms_member/terms_of_member.dart';
import 'package:signature/view/login/login_page.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/login_controller.dart';
import '../controllers/profile_controllers.dart';
import '../utils/circular_loader.dart';
import '../view/drower_navigation_page/change_password/change_password.dart';

class MainDrawer extends StatelessWidget {
  LoginController _loginController = Get.put(LoginController());

  ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Size size = MediaQuery.of(context).size;
    _launchWhatsapp() async {
      const url = "https://wa.me/?text=YourTextHere";
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.height * 0.05,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('lib/assets/logo_signature.png'),
                      )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${_profileController.getprofileModel?.memberName1}",
                          //'KUMAR PRINCE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 0.1.h,
                        ),
                        Text(
                          "${_profileController.getprofileModel?.email}",

                          //'SAMPLE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: AppColors.themecolors,
              ),
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.question,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/AboutUs'
                  ? Colors.grey[300]
                  : Colors.transparent,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => AboutUs());
                Get.offNamed('/AboutUs');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.person_rounded,
                color: Colors.black,
                size: 13.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'My Profile',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ProfilePage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => ProfilePage());
                Get.offNamed('/ProfilePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.umbrellaBeach,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'My Vacation',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/MyHolidayPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => MyHolidayPage());
                Get.offNamed('/MyHolidayPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.hotel,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Accociate Resorts',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/AssociatePage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => AssociatePage());
                Get.offNamed('/AssociatePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.photoFilm,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Gallery',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/Gallerys' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => Gallerys());
                Get.offNamed('/Gallerys');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.clockRotateLeft,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Payment History',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/PaymentHistory'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => PaymentHistory());
                Get.offNamed('/PaymentHistory');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.circleQuestion,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'AMC',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/AmcPage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => AmcPage());
                Get.offNamed('/AmcPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.handHoldingHeart,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Book a Holiday',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/BookHolidayPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => BookHolidayPage());
                Get.offNamed('/BookHolidayPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.clipboardCheck,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'My Agreement',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/MyAggrementPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => MyAggrementPage());
                //key.to(()=>MyAggrementPage());
                Get.offNamed('/MyAggrementPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.objectGroup,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Terms of Membership',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/TermsMemberPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => TermsMemberPage());
                Get.offNamed('/TermsMemberPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.creativeCommonsShare,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Refer a Friend',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                _launchWhatsapp();
                Get.offNamed('/home');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.personDrowning,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Become Member',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/BecomeMemberPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => BecomeMemberPage());
                Get.offNamed('/BecomeMemberPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.clipboardQuestion,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'FAQ',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/FaqPage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => FaqPage());
                Get.offNamed('/FaqPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.lockOpen,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Change Password',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/ChangePasswordPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => ChangePasswordPage());
                Get.offNamed('/ChangePasswordPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.globe,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Website',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/WebsitePage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => WebsitePage());
                Get.offNamed('/WebsitePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.idBadge,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ContactUs' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => ContactUs());
                Get.offNamed('/ContactUs');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                FontAwesomeIcons.arrowRightFromBracket,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
              onTap: () async {
                ///....logout
                _loginController.onInit();
                CallLoader.loader();
                await Future.delayed(Duration(seconds: 2));
                CallLoader.hideLoader();
                await SharedPreferences.getInstance()
                    .then((value) => value.clear());
                //Get.back();
                await Get.offAll(() => LoginPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
