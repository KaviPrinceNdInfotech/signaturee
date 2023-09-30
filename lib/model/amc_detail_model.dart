// To parse this JSON data, do
//
//     final amcdetailModel = amcdetailModelFromJson(jsonString);

import 'dart:convert';

AmcdetailModel amcdetailModelFromJson(String str) =>
    AmcdetailModel.fromJson(json.decode(str));

String amcdetailModelToJson(AmcdetailModel data) => json.encode(data.toJson());

class AmcdetailModel {
  List<AmcDetail>? amcDetail;

  AmcdetailModel({
    this.amcDetail,
  });

  factory AmcdetailModel.fromJson(Map<String, dynamic> json) => AmcdetailModel(
        amcDetail: json["AMCDetail"] == null
            ? []
            : List<AmcDetail>.from(
                json["AMCDetail"]!.map((x) => AmcDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "AMCDetail": amcDetail == null
            ? []
            : List<dynamic>.from(amcDetail!.map((x) => x.toJson())),
      };
}

class AmcDetail {
  int? id;
  num? amount;
  DateTime? dueDate;
  String? status;
  num? userInfoId;
  num? submitYear;

  AmcDetail({
    this.id,
    this.amount,
    this.dueDate,
    this.status,
    this.userInfoId,
    this.submitYear,
  });

  factory AmcDetail.fromJson(Map<String, dynamic> json) => AmcDetail(
        id: json["Id"],
        amount: json["Amount"],
        dueDate:
            json["DueDate"] == null ? null : DateTime.parse(json["DueDate"]),
        status: json["Status"],
        userInfoId: json["UserInfo_Id"],
        submitYear: json["SubmitYear"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Amount": amount,
        "DueDate": dueDate?.toIso8601String(),
        "Status": status,
        "UserInfo_Id": userInfoId,
        "SubmitYear": submitYear,
      };
}
