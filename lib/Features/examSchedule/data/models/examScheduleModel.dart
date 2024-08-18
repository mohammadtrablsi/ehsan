import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';

class ExamScheduleModel extends ExamScheduleEntity {
  String? sId;
  String? name;
  String? date;
  String? time;
  num? iV;
  String? day;

  ExamScheduleModel(
      {this.sId, this.name, this.date, this.time, this.iV, this.day})
      : super(date: date, name: name, time: time, day: day);

  factory ExamScheduleModel.fromJson(Map<String, dynamic> json) =>
      ExamScheduleModel(
          sId: json['_id'],
          name: json['name'],
          date: json['date'],
          time: json['time'],
          iV: json['__v'],
          day: json['day']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['date'] = this.date;
    data['time'] = this.time;
    data['__v'] = this.iV;
    data['day'] = this.day;
    return data;
  }
}
