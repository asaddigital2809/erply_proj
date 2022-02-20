import 'dart:convert';
/// id : 1
/// productId : null
/// productName : null
/// invoiceId : null
/// customerId : 9
/// dateSoldAt : null
/// warrantyStartAt : null
/// warrantyEndAt : null
/// registration : "123ABC"
/// serial : "12345678901234567"
/// brand : "Ford"
/// model : "Ranger"
/// version : "N/A"
/// year : "1234"
/// notes : "Here be notes"
/// data : {"truck":{"bedSize":"<6.5'","cabSize":"small"}}
/// createdAt : "2022-01-25T08:49:43Z"
/// createdById : 34
/// updatedAt : "2022-02-03T12:09:11Z"
/// updatedById : 34
/// relevance : "1"

NewModel newModelFromJson(String str) => NewModel.fromJson(json.decode(str));
String newModelToJson(NewModel data) => json.encode(data.toJson());
class NewModel {
  NewModel({
      this.id,
      this.productId, 
      this.productName, 
      this.invoiceId, 
      this.customerId,
      this.dateSoldAt,
      this.warrantyStartAt, 
      this.warrantyEndAt, 
      this.registration, 
      this.serial, 
      this.brand, 
      this.model, 
      this.version, 
      this.year, 
      this.notes, 
      this.data, 
      this.createdAt, 
      this.createdById,
      this.updatedAt,
      this.updatedById,
      this.relevance,});

  NewModel.fromJson(dynamic json) {
    id = json['id'].toString();
    productId = json['productId'];
    productName = json['productName'];
    invoiceId = json['invoiceId'];
    customerId = json['customerId'];
    dateSoldAt = json['dateSoldAt'];
    warrantyStartAt = json['warrantyStartAt'];
    warrantyEndAt = json['warrantyEndAt'];
    registration = json['registration'];
    serial = json['serial'];
    brand = json['brand'];
    model = json['model'];
    version = json['version'];
    year = json['year'];
    notes = json['notes'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    createdAt = json['createdAt'];
    createdById = json['createdById'];
    updatedAt = json['updatedAt'];
    updatedById = json['updatedById'];
    relevance = json['relevance'];
  }
  dynamic id;
  dynamic productId;
  dynamic productName;
  dynamic invoiceId;
  dynamic customerId;
  dynamic dateSoldAt;
  dynamic warrantyStartAt;
  dynamic warrantyEndAt;
  String? registration;
  String? serial;
  String? brand;
  String? model;
  String? version;
  String? year;
  String? notes;
  Data? data;
  String? createdAt;
  dynamic createdById;
  String? updatedAt;
  dynamic updatedById;
  String? relevance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id.toString();
    map['productId'] = productId;
    map['productName'] = productName;
    map['invoiceId'] = invoiceId;
    map['customerId'] = customerId;
    map['dateSoldAt'] = dateSoldAt;
    map['warrantyStartAt'] = warrantyStartAt;
    map['warrantyEndAt'] = warrantyEndAt;
    map['registration'] = registration;
    map['serial'] = serial;
    map['brand'] = brand;
    map['model'] = model;
    map['version'] = version;
    map['year'] = year;
    map['notes'] = notes;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['createdAt'] = createdAt;
    map['createdById'] = createdById;
    map['updatedAt'] = updatedAt;
    map['updatedById'] = updatedById;
    map['relevance'] = relevance;
    return map;
  }

}

/// truck : {"bedSize":"<6.5'","cabSize":"small"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.truck,});

  Data.fromJson(dynamic json) {
    truck = json['truck'] != null ? Truck.fromJson(json['truck']) : null;
  }
  Truck? truck;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (truck != null) {
      map['truck'] = truck?.toJson();
    }
    return map;
  }

}

/// bedSize : "<6.5'"
/// cabSize : "small"

Truck truckFromJson(String str) => Truck.fromJson(json.decode(str));
String truckToJson(Truck data) => json.encode(data.toJson());
class Truck {
  Truck({
      this.bedSize,
      this.cabSize,});

  Truck.fromJson(dynamic json) {
    bedSize = json['bedSize'];
    cabSize = json['cabSize'];
  }
  String? bedSize;
  String? cabSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bedSize'] = bedSize;
    map['cabSize'] = cabSize;
    return map;
  }

}