// To parse this JSON data, do
//
//     final myDataModel = myDataModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<MyDataModel> myDataModelFromJson(String str) => List<MyDataModel>.from(json.decode(str).map<MyDataModel>((x) => MyDataModel.fromJson(x)));

String myDataModelToJson(List<MyDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyDataModel {
  MyDataModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.invoiceId,
    required this.customerId,
    required this.dateSoldAt,
    required this.warrantyStartAt,
    required this.warrantyEndAt,
    required this.registration,
    required this.serial,
    required this.brand,
    required this.model,
    required this.version,
    required this.year,
    required this.notes,
    // required this.data,
    required this.createdAt,
    required this.createdById,
    required this.updatedAt,
    required this.updatedById,
    required this.relevance,
  });

  int id;
  dynamic productId;
  dynamic productName;
  dynamic invoiceId;
  int customerId;
  dynamic dateSoldAt;
  dynamic warrantyStartAt;
  dynamic warrantyEndAt;
  dynamic registration;
  dynamic serial; // error pakra gya
  dynamic brand;
  dynamic model;
  dynamic version;
  dynamic year;
  dynamic notes;
  // Data data;
  DateTime createdAt;
  int createdById;
  DateTime updatedAt;
  int updatedById;
  dynamic relevance;

  factory MyDataModel.fromJson(Map<String, dynamic> json) => MyDataModel(
    id: json["id"],
    productId: json["productId"],
    productName: json["productName"] ?? "productName_error",
    invoiceId: json["invoiceId"] ?? "invoiceId_error",
    customerId: json["customerId"] ?? "customerId_error",
    dateSoldAt: json["dateSoldAt"] ?? "dateSoldAt_error",
    warrantyStartAt: json["warrantyStartAt"] ?? "warrantyStartAt_error",
    warrantyEndAt: json["warrantyEndAt"] ?? "warrantyEndAt_error",
    registration: json["registration"] ?? "registration_error",
    serial: json["serial"] ?? "serial_error",
    brand: json["brand"] ?? "registration_error",
    model: json["model"] ?? "registration_error",
    version: json["version"] ?? "registration_error",
    year: json["year"] ?? "registration_error",
    notes: json["notes"] ?? "registration_error",
    // data: Data.fromJson(json["data"]),
    createdAt: DateTime.parse(json["createdAt"]),
    createdById: json["createdById"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    updatedById: json["updatedById"],
    relevance: json["relevance"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "productId": productId,
    "productName": productName,
    "invoiceId": invoiceId,
    "customerId": customerId,
    "dateSoldAt": dateSoldAt,
    "warrantyStartAt": warrantyStartAt,
    "warrantyEndAt": warrantyEndAt,
    "registration": registration,
    "serial": serial,
    "brand": brand,
    "model": model,
    "version": version,
    "year": year,
    "notes": notes,
    // "data": data.toJson(),
    "createdAt": createdAt.toIso8601String(),
    "createdById": createdById,
    "updatedAt": updatedAt.toIso8601String(),
    "updatedById": updatedById,
    "relevance": relevance,
  };
}

class Data {
  Data({
    required this.truck,
  });

  Truck truck;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    truck: Truck.fromJson(json["truck"]),
  );

  Map<String, dynamic> toJson() => {
    "truck": truck.toJson(),
  };
}

class Truck {
  Truck({
    required this.bedSize,
    required this.cabSize,
  });

  dynamic bedSize;
  dynamic cabSize;

  factory Truck.fromJson(Map<String, dynamic> json) => Truck(
    bedSize: json["bedSize"],
    cabSize: json["cabSize"],
  );

  Map<String, dynamic> toJson() => {
    "bedSize": bedSize,
    "cabSize": cabSize,
  };
}
