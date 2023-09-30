// To parse this JSON data, do
//
//     final myVacationModel = myVacationModelFromJson(jsonString);

import 'dart:convert';

MyVacationModel myVacationModelFromJson(String str) =>
    MyVacationModel.fromJson(json.decode(str));

String myVacationModelToJson(MyVacationModel data) =>
    json.encode(data.toJson());

class MyVacationModel {
  List<MyVacationHistory>? myVacationHistory;

  MyVacationModel({
    this.myVacationHistory,
  });

  factory MyVacationModel.fromJson(Map<String, dynamic> json) =>
      MyVacationModel(
        myVacationHistory: json["MyVacationHistory"] == null
            ? []
            : List<MyVacationHistory>.from(json["MyVacationHistory"]!
                .map((x) => MyVacationHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "MyVacationHistory": myVacationHistory == null
            ? []
            : List<dynamic>.from(myVacationHistory!.map((x) => x.toJson())),
      };
}

class MyVacationHistory {
  int? id;
  int? usedDays;
  int? usedNights;
  DateTime? bookingDate;
  DateTime? checkoutDate;
  String? bookingStatus;

  MyVacationHistory({
    this.id,
    this.usedDays,
    this.usedNights,
    this.bookingDate,
    this.checkoutDate,
    this.bookingStatus,
  });

  factory MyVacationHistory.fromJson(Map<String, dynamic> json) =>
      MyVacationHistory(
        id: json["Id"],
        usedDays: json["UsedDays"],
        usedNights: json["UsedNights"],
        bookingDate: json["BookingDate"] == null
            ? null
            : DateTime.parse(json["BookingDate"]),
        checkoutDate: json["CheckoutDate"] == null
            ? null
            : DateTime.parse(json["CheckoutDate"]),
        bookingStatus: json["BookingStatus"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "UsedDays": usedDays,
        "UsedNights": usedNights,
        "BookingDate": bookingDate?.toIso8601String(),
        "CheckoutDate": checkoutDate?.toIso8601String(),
        "BookingStatus": bookingStatus,
      };
}
