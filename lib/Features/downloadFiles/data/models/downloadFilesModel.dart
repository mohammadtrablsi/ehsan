import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';

class DownloadFilesModel extends DownloadFilesEntity{
  String? sId;
  String? name;
  String? url;
  List<String>? classesId;
  SubjectId? subjectId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  DownloadFilesModel(
      {this.sId,
      this.name,
      this.url,
      this.classesId,
      this.subjectId,
      this.createdAt,
      this.updatedAt,
      this.iV}):super(subject:subjectId!.name,name:name,date:updatedAt,file:url);

  factory DownloadFilesModel.fromJson(Map<String, dynamic> json) =>DownloadFilesModel(
    sId : json['_id'],
    name : json['name'],
    url : json['url'],
    classesId : json['classes_id'].cast<String>(),
    subjectId : json['subject_id'] != null
        ? new SubjectId.fromJson(json['subject_id'])
        : null,
    createdAt : json['createdAt'],
    updatedAt : json['updatedAt'],
    iV : json['__v'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['url'] = this.url;
    data['classes_id'] = this.classesId;
    if (this.subjectId != null) {
      data['subject_id'] = this.subjectId!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class SubjectId {
  String? name;

  SubjectId({this.name});

  SubjectId.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}