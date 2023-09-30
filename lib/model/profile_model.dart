// To parse this JSON data, do
//
//     final getProfileModel = getProfileModelFromJson(jsonString);

import 'dart:convert';

GetProfileModel getProfileModelFromJson(String str) =>
    GetProfileModel.fromJson(json.decode(str));

String getProfileModelToJson(GetProfileModel data) =>
    json.encode(data.toJson());

class GetProfileModel {
  int? id;
  String? memberName1;
  String? memberName2;
  String? address;
  String? city;
  dynamic pincode;
  String? mobile1;
  String? mobile2;
  String? email;
  DateTime? dateOfJoining;
  DateTime? validity;
  String? type;
  String? season;
  String? apartment;
  String? occupancy;
  String? membershipNo;
  num? tenure;
  String? modeOfPayment;

  GetProfileModel({
    this.id,
    this.memberName1,
    this.memberName2,
    this.address,
    this.city,
    this.pincode,
    this.mobile1,
    this.mobile2,
    this.email,
    this.dateOfJoining,
    this.validity,
    this.type,
    this.season,
    this.apartment,
    this.occupancy,
    this.membershipNo,
    this.tenure,
    this.modeOfPayment,
  });

  factory GetProfileModel.fromJson(Map<String, dynamic> json) =>
      GetProfileModel(
        id: json["Id"],
        memberName1: json["MemberName1"],
        memberName2: json["MemberName2"],
        address: json["Address"],
        city: json["City"],
        pincode: json["Pincode"],
        mobile1: json["Mobile1"],
        mobile2: json["Mobile2"],
        email: json["Email"],
        dateOfJoining: json["DateOfJoining"] == null
            ? null
            : DateTime.parse(json["DateOfJoining"]),
        validity:
            json["Validity"] == null ? null : DateTime.parse(json["Validity"]),
        type: json["Type"],
        season: json["Season"],
        apartment: json["Apartment"],
        occupancy: json["Occupancy"],
        membershipNo: json["MembershipNo"],
        tenure: json["Tenure"],
        modeOfPayment: json["ModeOfPayment"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "MemberName1": memberName1,
        "MemberName2": memberName2,
        "Address": address,
        "City": city,
        "Pincode": pincode,
        "Mobile1": mobile1,
        "Mobile2": mobile2,
        "Email": email,
        "DateOfJoining": dateOfJoining?.toIso8601String(),
        "Validity": validity?.toIso8601String(),
        "Type": type,
        "Season": season,
        "Apartment": apartment,
        "Occupancy": occupancy,
        "MembershipNo": membershipNo,
        "Tenure": tenure,
        "ModeOfPayment": modeOfPayment,
      };
}
