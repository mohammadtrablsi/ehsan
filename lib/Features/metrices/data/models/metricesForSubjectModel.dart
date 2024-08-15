import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';

class MetricesForSubjectModel  extends MetricesForSubjectEntity{
  bool? status;
  num? average;
  List<Data>? data;

  MetricesForSubjectModel({this.status, this.average, this.data}):super(data:data,average:average);


  factory MetricesForSubjectModel.fromJson(Map<String, dynamic> json) {
    return MetricesForSubjectModel(
      status: json['status'],
      average: json['average'],
      data: json['data'] != null
          ? List<Data>.from(json['data'].map((v) => Data.fromJson(v)))
          : null,
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['average'] = this.average;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  int? mark;
  int? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.mark,
      this.fullMark,
      this.subjectId,
      this.studentId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    mark = json['mark'];
    fullMark = json['full_mark'];
    subjectId = json['subject_id'] != null
        ? new SubjectId.fromJson(json['subject_id'])
        : null;
    studentId = json['student_id'];
    type = json['type'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['mark'] = this.mark;
    data['full_mark'] = this.fullMark;
    if (this.subjectId != null) {
      data['subject_id'] = this.subjectId!.toJson();
    }
    data['student_id'] = this.studentId;
    data['type'] = this.type;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class SubjectId {
  String? sId;
  String? name;
  String? classId;
  int? iV;

  SubjectId({this.sId, this.name, this.classId, this.iV});

  SubjectId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}