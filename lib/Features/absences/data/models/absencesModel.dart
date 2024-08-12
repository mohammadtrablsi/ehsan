import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';

class AbsencseModel extends AbsencseEntity {
  bool? status;
  List<Delay>? delay;
  List<Absence>? absence;

  AbsencseModel({this.status, this.delay, this.absence}) 
      : super(delays: delay, absences: absence);

  factory AbsencseModel.fromJson(Map<String, dynamic> json) {
    // Initialize the lists if they exist in the JSON
    List<Delay>? delaysList;
    if (json['delay'] != null) {
      delaysList = <Delay>[];
      json['delay'].forEach((v) {
        delaysList!.add(Delay.fromJson(v));
      });
    }

    List<Absence>? absencesList;
    if (json['absence'] != null) {
      absencesList = <Absence>[];
      json['absence'].forEach((v) {
        absencesList!.add(Absence.fromJson(v));
      });
    }

    return AbsencseModel(
      status: json['status'],
      delay: delaysList,
      absence: absencesList,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
  String? studentId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Delay({this.sId, this.studentId, this.createdAt, this.updatedAt, this.iV});

  Delay.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    studentId = json['student_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = this.sId;
    data['student_id'] = this.studentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Absence {
  String? sId;
  String? studentId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Absence({this.sId, this.studentId, this.createdAt, this.updatedAt, this.iV});

  Absence.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    studentId = json['student_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = this.sId;
    data['student_id'] = this.studentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
