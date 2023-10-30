// To parse this JSON data, do
//
//     final emiDueModel = emiDueModelFromJson(jsonString);

import 'dart:convert';

EmiDueModel emiDueModelFromJson(String str) =>
    EmiDueModel.fromJson(json.decode(str));

String emiDueModelToJson(EmiDueModel data) => json.encode(data.toJson());

class EmiDueModel {
  List<Emi>? emi;

  EmiDueModel({
    this.emi,
  });

  factory EmiDueModel.fromJson(Map<String, dynamic> json) => EmiDueModel(
        emi: json["Emi"] == null
            ? []
            : List<Emi>.from(json["Emi"]!.map((x) => Emi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Emi":
            emi == null ? [] : List<dynamic>.from(emi!.map((x) => x.toJson())),
      };
}

class Emi {
  int? id;
  String? userName;
  num? amount;
  int? userId;
  String? status;
  DateTime? deuDate;

  Emi({
    this.id,
    this.userName,
    this.amount,
    this.userId,
    this.status,
    this.deuDate,
  });

  factory Emi.fromJson(Map<String, dynamic> json) => Emi(
        id: json["Id"],
        userName: json["UserName"],
        amount: json["Amount"],
        userId: json["UserId"],
        status: json["Status"],
        deuDate:
            json["DeuDate"] == null ? null : DateTime.parse(json["DeuDate"]),
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "UserName": userName,
        "Amount": amount,
        "UserId": userId,
        "Status": status,
        "DeuDate": deuDate?.toIso8601String(),
      };
}
