import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';

class ExamScheduleModel extends ExamScheduleEntity {
  String? name;
  String? date;
  String? time;
  int? iV;

  ExamScheduleModel({this.name, this.date, this.time, this.iV})
      : super(date: date, name: name, time: time);

  factory ExamScheduleModel.fromJson(Map<String, dynamic> json) =>
      ExamScheduleModel(
          name: json['name'],
          date: json['date'],
          time: json['time'],
          iV: json['__v']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date'] = this.date;
    data['time'] = this.time;
    data['__v'] = this.iV;
    return data;
  }
}
