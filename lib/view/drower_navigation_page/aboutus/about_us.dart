import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                """Welcome to Signature!!! Your ultimate solution for all Luxurious Holidays & its related services. We are dedicated and passionate to fulfill the need of your dream holidays with the vision of unique holidays and premium customer services.""",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                ),
              ),
              Text(
                """
Signature Group founded in 1998 by Mr. Anujj Pandit has come a long way since its beginnings in Delhi. The group incorporated their startup firm as a private limited company under the ROC NCT Delhi and Haryana in year 2003 by name Signature Siestas Private Limited and after that Signature Linkers Private Limited in 2014, Signature Hotaality Private Limited in 2018.""",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                """The directors amongst them have more than 37 years of experience in various spheres viz. luxurious Resorts and Hotels, Timeshare Holidays, Exports Import, Real Estate, Overseas Exhibitions, , Event Management and Financial Services etc.""",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                ),
              ),
              Text(
                """The group has already been involved in promotion of renowned names in industry like Club Mahindra, Grand Holiday Club, Fort Chanwa Luni, Grand Heritage Vacations, De-Chalet etc. over the last three decade. Presently we are actively involved in developing, promoting and marketing of luxurious Resorts in India and overseas. As a part of Signature group currently we as Signature Linkers Private Limited are involved in marketing and promoting of timeshare holidays of their own group â€œSignature The Grand Clubâ€ in various part of country and giving impetus to turn hard work and inspiration into to a booming hospitality trade. We now serve customers all over globe, and are thrilled to be a part of the wing of the hospitality industry.""",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
