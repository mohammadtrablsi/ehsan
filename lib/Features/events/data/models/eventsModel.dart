
import 'package:ehsan/Features/Events/domain/entites/EventsEntity.dart';

class EventsModel extends EventsEntity {
  int id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String token;

  EventsModel(
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

  factory EventsModel.fromJson(Map<String, dynamic> json) => EventsModel(
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
