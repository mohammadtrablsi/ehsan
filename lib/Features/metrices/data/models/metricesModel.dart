import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';

class MetricesModel  extends MetricesEntity{
  bool? status;
  num? averageTest;
  num? averageOral;
  num? averageExam;
  num? fullAverage;
  List<Exam>? exam;
  List<Oral>? oral;
  List<Test>? test;

  MetricesModel(
      {this.status,
      this.averageTest,
      this.averageOral,
      this.averageExam,
      this.fullAverage,
      this.exam,
      this.oral,
      this.test}): super(
            averageTest: averageTest,
            averageOral: averageOral,
            averageExam: averageExam,fullAverage: fullAverage);

  factory MetricesModel.fromJson(Map<String, dynamic> json) {
    List<Exam>? examList;
    List<Oral>? oralList;
    List<Test>? testList;

    if (json['exam'] != null) {
      examList = [];
      json['exam'].forEach((v) {
        examList!.add(Exam.fromJson(v));
      });
    }

    if (json['oral'] != null) {
      oralList = [];
      json['oral'].forEach((v) {
        oralList!.add(Oral.fromJson(v));
      });
    }

    if (json['test'] != null) {
      testList = [];
      json['test'].forEach((v) {
        testList!.add(Test.fromJson(v));
      });
    }

    return MetricesModel(
      status: json['status'],
      averageTest: json['average_test'],
      averageOral: json['average_oral'],
      averageExam: json['average_exam'],
      fullAverage: json['full_average'],
      exam: examList,
      oral: oralList,
      test: testList,
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
  num? mark;
  num? fullMark;
  SubjectId? subjectId;
  String? studentId;
  String? type;
  String? createdAt;
  String? updatedAt;
  num? iV;
  num? date;

  Exam(
      {this.sId,
      this.mark,
      this.fullMark,
      this.subjectId,
      this.studentId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.date});

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
    date = json['date'];
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
    data['date'] = this.date;
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