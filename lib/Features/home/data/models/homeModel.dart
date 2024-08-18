import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';

class HomeModel extends HomeEntity {
  bool? status;
  num? absence;
  num? fullAverage;

  HomeModel({this.status, this.absence, this.fullAverage})
      : super(absences: absence, average: fullAverage);

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
      status: json['status'],
      absence: json['absence'],
      fullAverage: json['full_average']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['absence'] = this.absence;
    data['full_average'] = this.fullAverage;
    return data;
  }
}
