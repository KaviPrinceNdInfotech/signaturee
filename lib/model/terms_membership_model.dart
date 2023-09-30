// To parse this JSON data, do
//
//     final termMembership = termMembershipFromJson(jsonString);

import 'dart:convert';

TermMembership termMembershipFromJson(String str) =>
    TermMembership.fromJson(json.decode(str));

String termMembershipToJson(TermMembership data) => json.encode(data.toJson());

class TermMembership {
  int? id;
  String? terms;

  TermMembership({
    this.id,
    this.terms,
  });

  factory TermMembership.fromJson(Map<String, dynamic> json) => TermMembership(
        id: json["Id"],
        terms: json["Terms"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Terms": terms,
      };
}
