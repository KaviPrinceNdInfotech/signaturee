// To parse this JSON data, do
//
//     final paymentHisModel = paymentHisModelFromJson(jsonString);

import 'dart:convert';

PaymentHisModel paymentHisModelFromJson(String str) =>
    PaymentHisModel.fromJson(json.decode(str));

String paymentHisModelToJson(PaymentHisModel data) =>
    json.encode(data.toJson());

class PaymentHisModel {
  List<Datum>? data;
  num? balance;
  num? initialPayment;
  num? totalCost;
  int? status;

  PaymentHisModel({
    this.data,
    this.balance,
    this.initialPayment,
    this.totalCost,
    this.status,
  });

  factory PaymentHisModel.fromJson(Map<String, dynamic> json) =>
      PaymentHisModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        balance: json["Balance"],
        initialPayment: json["InitialPayment"],
        totalCost: json["TotalCost"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "Balance": balance,
        "InitialPayment": initialPayment,
        "TotalCost": totalCost,
        "Status": status,
      };
}

class Datum {
  num? balance;
  num? initialPayment;
  num? totalCost;
  num? userEmisAmount;
  DateTime? userEmisDeuDate;
  num? userAmcsAmount;
  DateTime? userAmcsDeuDate;

  Datum({
    this.balance,
    this.initialPayment,
    this.totalCost,
    this.userEmisAmount,
    this.userEmisDeuDate,
    this.userAmcsAmount,
    this.userAmcsDeuDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        balance: json["Balance"],
        initialPayment: json["InitialPayment"],
        totalCost: json["TotalCost"],
        userEmisAmount: json["UserEmisAmount"],
        userEmisDeuDate: json["UserEmisDeuDate"] == null
            ? null
            : DateTime.parse(json["UserEmisDeuDate"]),
        userAmcsAmount: json["UserAmcsAmount"],
        userAmcsDeuDate: json["UserAmcsDeuDate"] == null
            ? null
            : DateTime.parse(json["UserAmcsDeuDate"]),
      );

  Map<String, dynamic> toJson() => {
        "Balance": balance,
        "InitialPayment": initialPayment,
        "TotalCost": totalCost,
        "UserEmisAmount": userEmisAmount,
        "UserEmisDeuDate": userEmisDeuDate?.toIso8601String(),
        "UserAmcsAmount": userAmcsAmount,
        "UserAmcsDeuDate": userAmcsDeuDate?.toIso8601String(),
      };
}
