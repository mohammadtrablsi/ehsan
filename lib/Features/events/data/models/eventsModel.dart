import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';

class EventsModel extends EventsEntity {
  String? sId;
  String? name;
  String? place;
  String? date;
  String? photo;
  int? numberOfRegistrants;
  String? description;
  AdminAdded? adminAdded;
  int? iV;

  EventsModel(
      {this.sId,
      this.name,
      this.place,
      this.date,
      this.photo,
      this.numberOfRegistrants,
      this.description,
      this.adminAdded,
      this.iV}):super(name:name,place:place,date:date,photo:photo,description:description,id:sId);

  factory EventsModel.fromJson(Map<String, dynamic> json) =>EventsModel(
    sId : json['_id'],
    name : json['name'],
    place : json['place'],
    date : json['date'],
    photo : json['photo'],
    numberOfRegistrants : json['number_of_registrants'],
    description : json['description'],
    adminAdded : json['admin_added'] != null
        ? new AdminAdded.fromJson(json['admin_added'])
        : null,
    iV : json['__v']
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['place'] = this.place;
    data['date'] = this.date;
    data['photo'] = this.photo;
    data['number_of_registrants'] = this.numberOfRegistrants;
    data['description'] = this.description;
    if (this.adminAdded != null) {
      data['admin_added'] = this.adminAdded!.toJson();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class AdminAdded {
  String? sId;
  String? name;

  AdminAdded({this.sId, this.name});

  AdminAdded.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}