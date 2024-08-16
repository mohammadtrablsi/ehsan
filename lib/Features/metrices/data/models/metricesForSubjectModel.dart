import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';

class MetricesForSubjectModel extends MetricesForSubjectEntity{
  bool? status;
  num? average;
  List<Data>? data;
  num? averageTest;
  num? averageOral;
  num? averageExam;
  num? fullMarkTest;
  num? markTest;
  num? fullMarkOral;
  num? markOral;
  num? fullMarkExam;
  num? markExam;

  MetricesForSubjectModel(
      {this.status,
      this.average,
      this.data,
      this.averageTest,
      this.averageOral,
      this.averageExam,
      this.fullMarkTest,
      this.markTest,
      this.fullMarkOral,
      this.markOral,
      this.fullMarkExam,
      this.markExam}):super(data:data,average:average,totalMarks:(markTest! + markOral! + markExam!),myTotalMarks:(fullMarkTest! + fullMarkOral! + fullMarkExam!));

 
  factory MetricesForSubjectModel.fromJson(Map<String, dynamic> json) {
    return MetricesForSubjectModel(
      status: json['status'],
      average: json['average'],
      data: json['data'] != null
          ? (json['data'] as List).map((v) => Data.fromJson(v)).toList()
          : null,
      averageTest: json['average_test'],
      averageOral: json['average_oral'],
      averageExam: json['average_exam'],
      fullMarkTest: json['full_mark_test'],
      markTest: json['mark_test'],
      fullMarkOral: json['full_mark_oral'],
      markOral: json['mark_oral'],
      fullMarkExam: json['full_mark_exam'],
      markExam: json['mark_exam'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['average'] = this.average;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['average_test'] = this.averageTest;
    data['average_oral'] = this.averageOral;
    data['average_exam'] = this.averageExam;
    data['full_mark_test'] = this.fullMarkTest;
    data['mark_test'] = this.markTest;
    data['full_mark_oral'] = this.fullMarkOral;
    data['mark_oral'] = this.markOral;
    data['full_mark_exam'] = this.fullMarkExam;
    data['mark_exam'] = this.markExam;
    return data;
  }
}

class Data {
  String? sId;
  num? mark;
  num? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  num? iV;

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
  num? iV;

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