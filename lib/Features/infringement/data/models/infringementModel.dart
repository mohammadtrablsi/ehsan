import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';

class InfringementModel extends InfringementEntity{
  String? sId;
  String? description;
  String? studentId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  InfringementModel(
      {this.sId,
      this.description,
      this.studentId,
      this.createdAt,
      this.updatedAt,
      this.iV}):super(name:description,date:updatedAt);

  factory InfringementModel.fromJson(Map<String, dynamic> json) =>InfringementModel(
    sId : json['_id'],
    description : json['description'],
    studentId : json['student_id'],
    createdAt : json['createdAt'],
    updatedAt : json['updatedAt'],
    iV : json['__v']
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['description'] = this.description;
    data['student_id'] = this.studentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}