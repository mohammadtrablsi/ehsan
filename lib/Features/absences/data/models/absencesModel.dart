import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';

class AbsencseModel extends AbsencseEntity{
  bool? status;
  List<Delay>? delay;
  List<Absence>? absence;

  AbsencseModel({this.status, this.delay, this.absence}): super(delays: delay, absences: absence);

 factory AbsencseModel.fromJson(Map<String, dynamic> json) {
    return AbsencseModel(
      status: json['status'],
      delay: json['delay'] != null 
          ? (json['delay'] as List).map((v) => Delay.fromJson(v)).toList() 
          : [],
      absence: json['absence'] != null 
          ? (json['absence'] as List).map((v) => Absence.fromJson(v)).toList() 
          : [],
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.delay != null) {
      data['delay'] = this.delay!.map((v) => v.toJson()).toList();
    }
    if (this.absence != null) {
      data['absence'] = this.absence!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Delay {
  String? sId;
  String? delayTime;
  String? date;
  String? studentId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Delay(
      {this.sId,
      this.delayTime,
      this.date,
      this.studentId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Delay.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    delayTime = json['delay_time'];
    date = json['date'];
    studentId = json['student_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['delay_time'] = this.delayTime;
    data['date'] = this.date;
    data['student_id'] = this.studentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Absence {
  String? sId;
  String? date;
  String? studentId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Absence(
      {this.sId,
      this.date,
      this.studentId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Absence.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    date = json['date'];
    studentId = json['student_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['date'] = this.date;
    data['student_id'] = this.studentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
