import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class MyAggrementPage extends StatelessWidget {
  MyAggrementPage({Key? key}) : super(key: key);

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
          'My Aggrement',
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    """This Privacy Policy applies to the promotion / activities of Signature The Grand Club exclusively promoted by its parent company Signature Linkers Private Limited and its affiliates (hereinafter referred to as “STGC/SLPL” in this policy) by visiting website www.signaturethegrandclub.com. and our mobile application you are accepting the terms stated hereunder relating to Privacy. It explains how STGC/SLPL handles personal information and complies with the requirements of the Privacy Act. If you have further questions relating to this policy please contact our Guest Relations Officer by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1.Collecting information about you',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """In accordance with the applicable Acts governing Privacy, STGC/SLPL only collects personal information that is necessary for business purposes. We endeavour at all times to collect personal information in a fair and lawful manner, and to meet our members' expectations that we will respect their right to control how their personal information is collected and used. STGC/SLPL collects personal information to be used for the purpose of its business. These include:""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    """1.1 - Prior and Post purchase of STGC/SLPL’s holiday package, Exchange program,: """,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """STGC/SLPL collects information about members and prospects at the time when a person first joins a program and while a person is a member. The main categories of information we collect relate to a person's general contact information, personal details including spouse/family members details such as name, age range, gender, demographic information like post code, preferences, interest, professional details, address, contact information including e-mail address, use of the program, payment details, responses to surveys, Know Your Customer (KYC) documents as mandated by Government authorities and other details, which are usually collected directly from the member.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      """1.2 - STGC/SLPL Resort Management: """,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """STGC/SLPL collects personal information related to bookings and as necessary for other purposes related to the management of the resort facility. Further personal information may be collected in specific instances such as in the event of an incident occurring on site for legal and insurance reasons.
STGC/SLPL collects information on individuals when they book their travel arrangements, in order to process the transaction and to fulfill booking requests with travel and tourism operators. STGC/SLPL also collects general business information relating to employees, contractors, shareholders, resort managers and other individuals.
This policy explains the main features of STGC/SLPL s use of members and prospects information and does not outline in detail the use of contractor and employee information.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '2.Using and disclosing your personal information.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """Our purpose in collecting information about you is to provide you with personalized membership services, including exploring options like exchanging your holiday accommodation entitlements. STGC/SLPL uses personal information in several different ways in operating our membership programs and operating our business, improve our product and services, and most of these uses are clear from the circumstances. We also use your personal information for internal quality assurance purposes.
STGC/SLPL provides personal information to resort operators in order to facilitate a booking that you have requested. Otherwise, STGC/SLPL does not routinely disclose personal information, except where it is necessary to provide you with a service that you have requested such as to make bookings for your travel with airlines. STGC/SLPL will not normally otherwise use or disclose any information about you without your consent, unless required by law to protect the rights, property or personal safety of another STGC/SLPL member, any member of the public.
The assets and operations of the business are transferred to another party as a going concern. When you provide your personal information to us, STGC/SLPL will give you the choice as to whether or not you wish to receive further information about special offers, promotions, and changes to our products and services. If you indicate that you do not wish to receive these, we will not contact you further for these purposes. Please allow 6 weeks time for your request to be processed.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    """2.1 - Disclaimer for using data across Signature Group.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """I/We hereby agree and authorize Signature Linkers Private Limited and all of its divisions, affiliates, subsidiaries, related parties and other group companies (collectively the “Signature Entities”) to access my/our basic data / contact details provided herewith, i.e. name, address, telephone number, e-mail address, birth date and / or anniversary date. I/ We hereby consent to, agree and acknowledge that any of the Mahindra Entities may call/ email/ SMS me/us on any of the basic contact details shared by me/us, in order to keep me/us informed regarding product details, or send me/us any marketing and other product or service related communication and other offers of any of the Signature Entities. I/We provide the details herein at my/our sole discretion and confirm that no Signature Entity shall be held responsible or liable for any claim arising out of accessing or using my/our basic data / contact details shared by me/us. I/We consent to being assigned a unique identity within the Signature Group, to be shared amongst all Signature Entities, for the purpose outlined in this paragraph. I/We also agree that if at any point of time, I/We wish to stop receiving such communications from Signature Entities, I /We will call at Signature Linkers Private Limited’s designated call center number and register my/our preference or write to headmrd@teamsignatures.com with “OPT OUT CCD” as Subject.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3.Service providers',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """Like many businesses, STGC/SLPL uses a range of service providers to help us maximise the quality and efficiency of our services and our business operations. This means that individuals and organizations outside of STGC/SLPL, such as mail houses, will sometimes have access to personal information held by STGC/SLPL and may use it on behalf of STGC/SLPL. We require our service providers to adhere to strict privacy guidelines and not to keep this information or use it for any unauthorised purposes.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '4.STGC/SLPL and marketing activities',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """STGC/SLPL manages communications with members, prospective members and customers according to its privacy policy. We respect individual’s choices about being contacted for marketing purposes. We may occasionally contact you at the e-mail or other address that you provide to us in order to:
Remind you of your membership renewal or warn you of the upcoming expiry of membership benefits. Provide you with updated information about our services or special promotions. Provide you with other information about other products and services which you may have an interest in. Some of this information is necessary as part of our communication about the STGC/SLPL program and is sent to all members. However, if you are receiving promotional information from STGC/SLPL and do not wish to receive this information any longer, you may remove your name from 
our list either by calling us on 011-40193528 or by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com and asking to be removed from our mailing list. Please allow 6 weeks time for this request to be processed. Business timings: Monday through Friday 10.00 AM to 6.00 PM, If you are calling from outside India, please dial
 +911140193529. Closed on Sunday and National Holidays**.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5. For our web site users',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """STGC/SLPL manages communications with members, prospective members and customers according to its privacy policy. We respect individual’s choices about being contacted for marketing purposes. We may occasionally contact you at the e-mail or other address that you provide to us in order to:
Remind you of your membership renewal or warn you of the upcoming expiry of membership benefits. Provide you with updated information about our services or special promotions. Provide you with other information about other products and services which you may have an interest in. Some of this information is necessary as part of our communication about the STGC/SLPL program and is sent to all members. However, if you are receiving promotional information from STGC/SLPL and do not wish to receive this information any longer, you may remove your name from 
our list either by calling us on 011-40193528 or by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com and asking to be removed from our mailing list. Please allow 6 weeks time for this request to be processed. Business timings: Monday through Friday 10.00 AM to 6.00 PM, If you are calling from outside India, please dial
 +911140193529. Closed on Sunday and National Holidays**.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5.1 - Business timings:',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """Monday through Friday 10.00 AM to 6.00 PM, Saturday 10.00 AM to 2.00 PM If you are calling from outside India, please dial +911140193529. Closed on Sunday and National Holidays**.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5.2 - Links from our web site:',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """Our web site contains links to other sites. Please be aware that we are not responsible for the content or privacy practices of such other sites. We encourage our users to be aware when they leave our site and to read the privacy statements of any other site that collect personally identifiable information. We are not liable to you or any third party for any damages/loss etc that you or any third party may suffer howsoever arising from your disclosure of personal information in any such public environment.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5.3 - For our Mobile App users:',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """When you download or use apps created by Signature IT Team or our subsidiaries, we may receive information about your location and your mobile device, including a unique identifier for your device. We may use this information to provide you with location-based services, such as advertising, search results, and other personalized content. Most mobile devices allow you to turn off location services. We may collect information about you as stated herein above for the purpose of downloading our mobile application in your mobile phones. The information that we gather is only for the purpose of providing, improving the product and services provided to you. Also when you use our applications, we also process technical data such as your IP-address, Device ID, Device Contacts, and information about the manufacturer, model, and operating system of your mobile device. We use this data to enable us to deliver the functionalities of the services provided by STGC/SLPL, resolve technical difficulties, and provide you with the correct (prevent the transmission of spam, and/or unlawful, defamatory, obscene or otherwise undesirable material or content) and most up to date version of the STGC/SLPL.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '6. You can access the information we keep about you',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """If at any time you want to know exactly what personal information we hold about you, you are welcome to access your record by calling us on 011-40193528 or by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com and asking to be removed from our mailing list. Please allow 6 weeks time for this request to be processed. Business timings: Monday through Friday 10.00 AM to 6.00 PM, If you are calling from outside India, please dial +911140193529. Closed on Sunday and National Holidays**.For security purposes confirmation of your identity will be required prior to supply of this information.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '7. You can access the information we keep about you',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """If at any time you want to know exactly what personal information we hold about you, you are welcome to access your record by calling us on 011-40193528 or by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com and asking to be removed from our mailing list. Please allow 6 weeks time for this request to be processed. Business timings: Monday through Friday 10.00 AM to 6.00 PM, If you are calling from outside India, please dial +911140193529. Closed on Sunday and National Holidays**.For security purposes confirmation of your identity will be required prior to supply of this information.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '8. Storage and security of your personal information',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """STGC/SLPL Endeavour’s to take all reasonable steps to keep secure any information which we hold about you, and to keep this information accurate and up to date. STGC/SLPL uses a sophisticated computer data network, and all access to the computers and system devices are password controlled. Employees can only gain access to data if they are authorized, and we maintain an audit log which records each time a file is accessed. We also require our employees and data processors to respect the confidentiality of any personal information held by STGC/SLPL. Data is secured in a secure data centre environment, with daily backups of all data taken and a copy of all data kept offsite. Our data network is totally private and not accessible over the Internet. We use sophisticated detection and intrusion technologies to ensure that there are no network security breaches. Under no circumstances, including but not limited to negligence, STGC/SLPL or its officers or employees shall not have any liability of any nature whatsoever, in respect of personal information provided by you on this website.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '9. Transfer of personal information overseas',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """Please note also that as a global business, STGC/SLPL may use overseas facilities to process or back up the information that it holds. As a result, we may transfer your personal information to our overseas facilities for storage. However, we will only transfer information overseas as authorized by the applicable Privacy laws and in keeping with our other commitments to safeguard your privacy.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '10. What to do if you have a problem or question',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """If STGC/SLPL becomes aware of any ongoing concerns or problems concerning our privacy practices, we will take these issues seriously and work to address these concerns. If you have any further queries relating to our Privacy Policy, or you have a problem or complaint, please contact us on 011-40193528 or by mail at K-28, 2nd Floor, Lajpat Nagar, New Delhi-110024 or e-mail info@signaturelinkers.com or headmrd@teamsignatures.com and asking to be removed from our mailing list. Please allow 6 weeks time for this request to be processed. Business timings: Monday through Friday 10.00 AM to 6.00 PM, If you are calling from outside India, please dial +911140193529. Closed on Sunday and National Holidays**.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '11. Future changes',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    """Our commitment to being the world's leading holiday exchange business and to continually improve our services means that our business will continue to evolve as we respond to customer needs. Because of this, from time to time, our policies will be reviewed and may be revised. Changes to STGC/SLPL's Privacy Policy will be made by posting an updated version of the policy on our website and communicated subsequently in our publications for our members.""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
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
