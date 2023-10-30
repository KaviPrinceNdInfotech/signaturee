import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/model/amc_detail_model.dart';
import 'package:signature/model/emi_due_payment.dart';
import 'package:signature/model/gellery_model.dart';
import 'package:signature/model/get_associate_model.dart';
import 'package:signature/model/my_vacation_model.dart';
import 'package:signature/model/payment_history_model.dart';
import 'package:signature/model/profile_model.dart';
import 'package:signature/model/terms_membership_model.dart';
import 'package:signature/view/home_page/home_pageee.dart';
import 'package:signature/view/login/login_page.dart';

import '../model/banner_model.dart';
import '../model/contact_us_model.dart';

class ApiProvider {
  static var baseUrl = 'https://new.signatureresorts.in/api/';
  static String userid = ''.toString();

  //'https://organicdeal.in/api/';
  // banner Api
  ///1.banner apis.....
  static SliderBannerApi() async {
    var url = 'https://new.signatureresorts.in/api/CommonApi/GetBanner';
    //baseUrl + 'ProductAPI/Banners';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        UserBannerModel? homebannerlist = userBannerModelFromJson(r.body);
        print('homeBannerlist: ${homebannerlist.banner?[0].id}');
        return homebannerlist;
      }
    } catch (error) {
      print('homeBannerError: ${error}');
      return;
    }
  }

  ///2.login_email..........post...apis...
  static LoginApi(var Username, var Password) async {
    var url = baseUrl + 'CommonApi/Login';
    var body = {
      "Username": Username,
      "Password": Password,
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url), body: body,
      //headers: headers
    );
    print(r.body);
    if (r.statusCode == 200) {
      //await Future.delayed(Duration(milliseconds: 500));

      var prefs = GetStorage();

      //saved userid..........
      prefs.write("Id".toString(), json.decode(r.body)['Id']);
      userid = prefs.read("Id").toString();
      print('wwwuserid:${userid}');

      //Get.to(() => HomePage());

      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('message', r.body);
    } else {
      Get.snackbar('Error', r.body);
      return r;
    }
  }

  ///3.amc details apis.....................
  static AmcDetailsapi() async {
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEE:${userid}');
    var url = baseUrl + 'CommonApi/GetAMC_Detail?UserId=$userid';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        AmcdetailModel? amcdetailloist = amcdetailModelFromJson(r.body);
        print("amcdetail : ${amcdetailloist.amcDetail?[0].id}");
        return amcdetailloist;
      }
    } catch (error) {
      print('amcdetaileror: $error');
      return;
    }
  }

  ///4.profile details api.............
  static PriofileApi() async {
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEE:${userid}');
    var url = baseUrl + 'CommonApi/GetUserProfileDetail?Id=$userid';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        GetProfileModel? geetprofilemodel = getProfileModelFromJson(r.body);
        print("profile: ${geetprofilemodel.email}");
        return geetprofilemodel;
      }
    } catch (error) {
      print('profileedetaileror: $error');
    }
  }

  ///5.feedback image.................
  static FeedbackApi(var FeedBaclMessage) async {
    var prefs = GetStorage();
    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEE:${userid}');
    var url = baseUrl + 'CommonApi/AddFeedback';
    var body = {
      "UserInfo_Id": userid,
      "FeedBaclMessage": "${FeedBaclMessage}",
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print("feedbackeeee${r.body}");
    if (r.statusCode == 200) {
      print("feedback${r.body}");
      Get.snackbar('Message', r.body);

      Get.offAll(() => HomePage());
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }

  ///6.add holiday.................
  static AddholidayApi(
    var BookingDate,
    var CheckoutDate,
    var City,
    var NoOfAdults,
    var Kids,
    var NoOfRooms,
  ) async {
    var url = baseUrl + 'CommonApi/AddHolidayDetail';
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEE:${userid}');
    var body = {
      "UserInfo_Id": userid,
      "BookingDate": "${BookingDate}",
      "CheckoutDate": "${CheckoutDate}",
      "City": "${City}",
      "NoOfAdults": "${NoOfAdults}",
      "Kids": "${Kids}",
      "NoOfRooms": "${NoOfRooms}"
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      print("oooktest:${r.body}");
      Get.snackbar('Message', r.body);
      Get.to(() => HomePage());

      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }

  ///
  ///7.terms membership api.............
  static TermsMemberApi() async {
    var url = baseUrl + 'CommonApi/GetTermOfMembership';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        TermMembership? termsmembermodel = termMembershipFromJson(r.body);
        print("terms: ${termsmembermodel.id}");
        return termsmembermodel;
      }
    } catch (error) {
      print('termseror: $error');
    }
  }

  ///8.gallary api.............
  static GalarryApi() async {
    var url = baseUrl + 'CommonApi/GetGallery';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        GelleryModel? gellarymodel = gelleryModelFromJson(r.body);
        print("terms: ${gellarymodel.gallery?[0].id}");
        return gellarymodel;
      }
    } catch (error) {
      print('galary: $error');
    }
  }

  ///9.change password.................
  static ChangePassword(
      var OldPassword, var Password, var ConfirmPassword) async {
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEEeeew:${userid}');
    var url = baseUrl + 'CommonApi/ChangePassword';
    var body = {
      "Id": userid,
      "OldPassword": "${OldPassword}",
      "Password": "${Password}",
      "ConfirmPassword": "${ConfirmPassword}"
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      Get.to(() => LoginPage());
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }

  ///8.associate_resort api.............
  static AssociateresortApi() async {
    var url = baseUrl + 'CommonApi/GetAssociateResorts';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        GetassociateModel? getassociatemodel =
            getassociateModelFromJson(r.body);
        print("associateresort: ${getassociatemodel.ourResorts?[0].id}");
        return getassociatemodel;
      }
    } catch (error) {
      print('resort: $error');
    }
  }

  ///9.my vacations details api.............
  static MyHolidayApi() async {
    var prefs = GetStorage();
    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEEmyvecation:${userid}');
    var url = baseUrl + 'CommonApi/GetMyVacationHistory?UserId=$userid';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        MyVacationModel? getvacationmodel = myVacationModelFromJson(r.body);
        print("profile: ${getvacationmodel.myVacationHistory?[0].bookingDate}");
        return getvacationmodel;
      }
    } catch (error) {
      print('profileedetailerorvacation: $error');
    }
  }
  //https://new.signatureresorts.in/api/CommonApi/ContactUs

  ///10.contact details api.............
  static Conntactus() async {
    var prefs = GetStorage();
    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEEmyvecationsdasd:${userid}');
    var url = baseUrl + 'CommonApi/ContactUs';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        ContactUsModel? contactusmodel = contactUsModelFromJson(r.body);
        // print("profile: ${getvacationmodel.myVacationHistory?[0].bookingDate}");
        return contactusmodel;
      }
    } catch (error) {
      print('profileedetailerorvacation: $error');
    }
  }

  ///11.update profile.................
  static UpdateProfile(var MemberName1, var Email, var Mobile1) async {
    var prefs = GetStorage();
    userid = prefs.read("Id").toString();
    print('EEeeewasdsads:${userid}');
    var url = baseUrl + 'CommonApi/UpdateProfileDetail';
    var body = {
      "Id": userid,
      "MemberName1": "${MemberName1}",
      "Email": "${Email}",
      "Mobile1": "${Mobile1}"
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      Get.to(() => HomePage());
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }

  ///12.amc details apis.....................
  static AmcDueapi() async {
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEsfsaE:${userid}');
    var url = baseUrl + 'CommonApi/GetUserEmi?userid=$userid';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        EmiDueModel? emiDueModel = emiDueModelFromJson(r.body);
        print("amcduedetail : ${emiDueModel.emi?[0]?.id}");
        return emiDueModel;
      }
    } catch (error) {
      print('amcdetazxcileror: $error');
      return;
    }
  }

  ///13.post_payment__api.................
  static PostPaymentApi() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var AmcdueId = preferences.getString("AmcdueId");
    print("AmcdueId: ${AmcdueId}");
    var prefs = GetStorage();
    userid = prefs.read("Id").toString();
    print('EEeeewasdsadsasDSA:${AmcdueId}');
    var url = baseUrl + 'CommonApi/PayEmi';
    var body = {
      "Id": AmcdueId,
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );

    ///todo:ttddiiiiidddddffddf.................................
    print('EEeeewasdsadsasDSAbodyy:${r.body}');

    ///todo:fdgfdmvfdkfvkdvmkvkmv..............................................
    //print(r.body);
    if (r.statusCode == 200) {
      print('Eeeewasdsadsasdstodo:${AmcdueId}');
      print('Eeeewasdsadsasdstodosdsdsssds:${AmcdueId}');

      ///..............................................................
      Get.to(() => HomePage());

      ///.....................................................
      /// print('Eeeewasdsadsasdstodosdsdsssds:${AmcdueId}');
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }

  ///14.payment.......history........

  static PaymentHistoryApi() async {
    var prefs = GetStorage();

    //saved userid..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    userid = prefs.read("Id").toString();
    print('wwwuseridEsfsaEsasa:${userid}');
    var url = baseUrl + 'CommonApi/PaymentHistory?userid=$userid';
    try {
      http.Response r = await http.get(Uri.parse(url));
      if (r.statusCode == 200) {
        PaymentHisModel? paymenthisModel = paymentHisModelFromJson(r.body);
        print("amcduedetailmodeel : ${paymenthisModel.data?[0]?.balance}");
        return paymenthisModel;
      }
    } catch (error) {
      print('amcdetazxcilerorss: $error');
      return;
    }
  }

  ///15.become member...................
  static BecomeMenberApi(
      var Name, var Email, var Mobile, var Duration, var Description) async {
    var prefs = GetStorage();
    userid = prefs.read("Id").toString();
    print('EEeeewasdsads:${userid}');
    var url = baseUrl + 'CommonApi/BecomeMember';
    var body = {
      "UserId": "$userid",
      "Name": "$Name",
      "Email": "$Email",
      "Mobile": "$Mobile",
      "Duration": "$Duration",
      "Description": "$Description"
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      Get.to(() => HomePage());
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('Message', r.body);
    } else {
      Get.snackbar('Message', r.body);
      return r;
    }
  }
}

//https://new.signatureresorts.in/api/CommonApi/PayEmi
