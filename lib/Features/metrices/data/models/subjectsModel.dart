import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';

class SubjectsModel extends SubjectsEntity {
  bool? status;
  List<Datas>? data;

  SubjectsModel({this.status, this.data}) : super(data: data);

  factory SubjectsModel.fromJson(Map<String, dynamic> json) {
    List<Datas>? dataList;

    if (json['data'] != null) {
      dataList = <Datas>[];
      json['data'].forEach((v) {
        dataList!.add(Datas.fromJson(v));
      });
    }

    return SubjectsModel(
      status: json['status'],
      data: dataList,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Datas {
  String? sId;
  String? name;

  Datas({this.sId, this.name});

  Datas.fromJson(Map<String, dynamic> json) {
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
