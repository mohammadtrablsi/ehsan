

import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';

class ProfileModel extends ProfileEntity {
  bool? status;
  Data? data;

  ProfileModel({this.status, this.data})
      : super(
            address: data!.address,
            birthPlace: data.birthPlace,
            birthadate: data.birthDate,
            className: data.classId!.name,
            classSection: data.classId!.section,
            fatherName: data.fatherName,
            joinDate: data.joinDate,
            motherName: data.motherName,
            name: data.fullName,
            teleNum: data.teleNum);

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
      status: json['status'],
      data: json['data'] != null ? new Data.fromJson(json['data']) : null);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? fullName;
  String? birthDate;
  String? birthPlace;
  String? joinDate;
  String? fatherName;
  String? motherName;
  String? address;
  String? teleNum;
  String? mobileNum;
  ClassId? classId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.fullName,
      this.birthDate,
      this.birthPlace,
      this.joinDate,
      this.fatherName,
      this.motherName,
      this.address,
      this.teleNum,
      this.mobileNum,
      this.classId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fullName = json['full_name'];
    birthDate = json['birth_date'];
    birthPlace = json['birth_place'];
    joinDate = json['join_date'];
    fatherName = json['father_name'];
    motherName = json['mother_name'];
    address = json['address'];
    teleNum = json['tele_num'];
    mobileNum = json['mobile_num'];
    classId = json['class_id'] != null
        ? new ClassId.fromJson(json['class_id'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['full_name'] = this.fullName;
    data['birth_date'] = this.birthDate;
    data['birth_place'] = this.birthPlace;
    data['join_date'] = this.joinDate;
    data['father_name'] = this.fatherName;
    data['mother_name'] = this.motherName;
    data['address'] = this.address;
    data['tele_num'] = this.teleNum;
    data['mobile_num'] = this.mobileNum;
    if (this.classId != null) {
      data['class_id'] = this.classId!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class ClassId {
  String? sId;
  String? name;
  String? section;
  int? iV;
  String? admin;

  ClassId({this.sId, this.name, this.section, this.iV, this.admin});

  ClassId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    section = json['section'];
    iV = json['__v'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['section'] = this.section;
    data['__v'] = this.iV;
    data['admin'] = this.admin;
    return data;
  }
}
