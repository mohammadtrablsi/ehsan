import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';

class GradesModel extends GradesEntity {
  bool? status;
  double? averageTest;
  int? averageOral;
  int? averageExam;
  double? fullAverage;
  List<Exam>? exam;
  List<Oral>? oral;
  List<Test>? test;

  GradesModel(
      {this.status,
      this.averageTest,
      this.averageOral,
      this.averageExam,
      this.fullAverage,
      this.exam,
      this.oral,
      this.test})
      : super(fullAverage: fullAverage, exam: exam, oral: oral, test: test);

  factory GradesModel.fromJson(Map<String, dynamic> json) {
    return GradesModel(
      status: json['status'],
      averageTest: json['average_test'],
      averageOral: json['average_oral'],
      averageExam: json['average_exam'],
      fullAverage: json['full_average'],
      exam: json['exam'] != null
          ? List<Exam>.from(json['exam'].map((v) => Exam.fromJson(v)))
          : null,
      oral: json['oral'] != null
          ? List<Oral>.from(json['oral'].map((v) => Oral.fromJson(v)))
          : null,
      test: json['test'] != null
          ? List<Test>.from(json['test'].map((v) => Test.fromJson(v)))
          : null,
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
    return data;
  }
}

class Exam {
  String? sId;
  int? mark;
  int? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? iV;
  // int? date;

  Exam({
    this.sId,
    this.mark,
    this.fullMark,
    this.subjectId,
    this.studentId,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.iV,
  });

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
    // date = json['date'];
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
    // data['date'] = this.date;
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

class Oral {
  String? sId;
  int? mark;
  int? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? iV;

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
  int? mark;
  int? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? iV;

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
