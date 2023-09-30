// To parse this JSON data, do
//
//     final getassociateModel = getassociateModelFromJson(jsonString);

import 'dart:convert';

GetassociateModel getassociateModelFromJson(String str) =>
    GetassociateModel.fromJson(json.decode(str));

String getassociateModelToJson(GetassociateModel data) =>
    json.encode(data.toJson());

class GetassociateModel {
  List<OurResort>? ourResorts;

  GetassociateModel({
    this.ourResorts,
  });

  factory GetassociateModel.fromJson(Map<String, dynamic> json) =>
      GetassociateModel(
        ourResorts: json["OurResorts"] == null
            ? []
            : List<OurResort>.from(
                json["OurResorts"]!.map((x) => OurResort.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "OurResorts": ourResorts == null
            ? []
            : List<dynamic>.from(ourResorts!.map((x) => x.toJson())),
      };
}

class OurResort {
  int? id;
  String? resortName;
  String? place;

  OurResort({
    this.id,
    this.resortName,
    this.place,
  });

  factory OurResort.fromJson(Map<String, dynamic> json) => OurResort(
        id: json["Id"],
        resortName: json["ResortName"],
        place: json["Place"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "ResortName": resortName,
        "Place": place,
      };
}
