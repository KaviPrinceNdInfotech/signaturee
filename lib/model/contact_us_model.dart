// To parse this JSON data, do
//
//     final contactUsModel = contactUsModelFromJson(jsonString);

import 'dart:convert';

ContactUsModel contactUsModelFromJson(String str) =>
    ContactUsModel.fromJson(json.decode(str));

String contactUsModelToJson(ContactUsModel data) => json.encode(data.toJson());

class ContactUsModel {
  int? id;
  String? content;

  ContactUsModel({
    this.id,
    this.content,
  });

  factory ContactUsModel.fromJson(Map<String, dynamic> json) => ContactUsModel(
        id: json["Id"],
        content: json["Content"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Content": content,
      };
}
