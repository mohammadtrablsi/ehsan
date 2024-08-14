

import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';

class AskDoubtModel extends AskDoubtEntity {
  bool? status;
  String? message;
  Data? data;

  AskDoubtModel({this.status, this.message, this.data})
      : super(message: message);

  factory AskDoubtModel.fromJson(Map<String, dynamic> json) => AskDoubtModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? new Data.fromJson(json['data']) : null);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? type;
  String? description;
  String? studentId;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.type,
      this.description,
      this.studentId,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    studentId = json['student_id'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['description'] = this.description;
    data['student_id'] = this.studentId;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
