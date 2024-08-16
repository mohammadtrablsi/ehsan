import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';

class MetricesModel extends MetricesEntity {
  bool? status;
  num? averageTest;
  num? averageOral;
  num? averageExam;
  num? fullAverage;
  List<Exam>? exam;
  List<Oral>? oral;
  List<Test>? test;
  num? fullMarkTest;
  num? markTest;
  num? fullMarkOral;
  num? markOral;
  num? fullMarkExam;
  num? markExam;

  MetricesModel(
      {this.status,
      this.averageTest,
      this.averageOral,
      this.averageExam,
      this.fullAverage,
      this.exam,
      this.oral,
      this.test,
      this.fullMarkTest,
      this.markTest,
      this.fullMarkOral,
      this.markOral,
      this.fullMarkExam,
      this.markExam})
      : super(
            averageTest: averageTest,
            averageOral: averageOral,
            averageExam: averageExam,
            fullAverage: fullAverage,
            totalMarks: (markTest! + markOral! + markExam!),
            myTotalMarks: (fullMarkTest! + fullMarkOral! + fullMarkExam!));

  factory MetricesModel.fromJson(Map<String, dynamic> json) {
    return MetricesModel(
      status: json['status'],
      averageTest: json['average_test'],
      averageOral: json['average_oral'],
      averageExam: json['average_exam'],
      fullAverage: json['full_average'],
      exam: json['exam'] != null
          ? (json['exam'] as List).map((v) => Exam.fromJson(v)).toList()
          : null,
      oral: json['oral'] != null
          ? (json['oral'] as List).map((v) => Oral.fromJson(v)).toList()
          : null,
      test: json['test'] != null
          ? (json['test'] as List).map((v) => Test.fromJson(v)).toList()
          : null,
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
    data['average_test'] = this.averageTest;
    data['average_oral'] = this.averageOral;
    data['average_exam'] = this.averageExam;
    data['full_average'] = this.fullAverage;
    if (this.exam != null) {
      data['exam'] = this.exam!.map((v) => v.toJson()).toList();
    }
    if (this.oral != null) {
      data['oral'] = this.oral!.map((v) => v.toJson()).toList();
    }
    if (this.test != null) {
      data['test'] = this.test!.map((v) => v.toJson()).toList();
    }
    data['full_mark_test'] = this.fullMarkTest;
    data['mark_test'] = this.markTest;
    data['full_mark_oral'] = this.fullMarkOral;
    data['mark_oral'] = this.markOral;
    data['full_mark_exam'] = this.fullMarkExam;
    data['mark_exam'] = this.markExam;
    return data;
  }
}

class Exam {
  String? sId;
  num? mark;
  num? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  num? iV;

  Exam(
      {this.sId,
      this.mark,
      this.fullMark,
      this.subjectId,
      this.studentId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Exam.fromJson(Map<String, dynamic> json) {
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

class Oral {
  String? sId;
  num? mark;
  num? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  num? iV;

  Oral(
      {this.sId,
      this.mark,
      this.fullMark,
      this.subjectId,
      this.studentId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Oral.fromJson(Map<String, dynamic> json) {
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

class Test {
  String? sId;
  num? mark;
  num? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  num? iV;

  Test(
      {this.sId,
      this.mark,
      this.fullMark,
      this.subjectId,
      this.studentId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Test.fromJson(Map<String, dynamic> json) {
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
