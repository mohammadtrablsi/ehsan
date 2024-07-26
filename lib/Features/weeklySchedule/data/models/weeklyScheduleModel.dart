import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';

class WeeklyScheduleModel extends WeeklyScheduleEntity {
  int id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String token;

  WeeklyScheduleModel(
      {required this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.image,
      required this.token})
      : super(
          id: id,
        );

  factory WeeklyScheduleModel.fromJson(Map<String, dynamic> json) => WeeklyScheduleModel(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        gender: json['gender'],
        image: json['image'],
        token: json['token'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}
