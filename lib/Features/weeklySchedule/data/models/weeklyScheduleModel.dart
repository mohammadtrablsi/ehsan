




import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';

class WeeklyScheduleModel extends WeeklyScheduleEntity{
  bool? status;
  List<Son>? son;
  List<Mun>? mun;
  List<The>? the;
  List<Wen>? wen;
  List<Tus>? tus;

  WeeklyScheduleModel(
      {this.status, this.son, this.mun, this.the, this.wen, this.tus}):super(son:son, mun:mun, the:the, wen:wen, tus:tus);

 factory WeeklyScheduleModel.fromJson(Map<String, dynamic> json) {
    return WeeklyScheduleModel(
      status: json['status'],
      son: json['son'] != null
          ? List<Son>.from(json['son'].map((v) => Son.fromJson(v)))
          : null,
      mun: json['mun'] != null
          ? List<Mun>.from(json['mun'].map((v) => Mun.fromJson(v)))
          : null,
      the: json['the'] != null
          ? List<The>.from(json['the'].map((v) => The.fromJson(v)))
          : null,
      wen: json['wen'] != null
          ? List<Wen>.from(json['wen'].map((v) => Wen.fromJson(v)))
          : null,
      tus: json['tus'] != null
          ? List<Tus>.from(json['tus'].map((v) => Tus.fromJson(v)))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.son != null) {
      data['son'] = this.son!.map((v) => v.toJson()).toList();
    }
    if (this.mun != null) {
      data['mun'] = this.mun!.map((v) => v.toJson()).toList();
    }
    if (this.the != null) {
      data['the'] = this.the!.map((v) => v.toJson()).toList();
    }
    if (this.wen != null) {
      data['wen'] = this.wen!.map((v) => v.toJson()).toList();
    }
    if (this.tus != null) {
      data['tus'] = this.tus!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Son {
  String? sId;
  String? name;
  String? teacher;
  int? order;
  String? day;
  String? classId;
  int? iV;

  Son(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV});

  Son.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['teacher'] = this.teacher;
    data['order'] = this.order;
    data['day'] = this.day;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}

class Mun {
  String? sId;
  String? name;
  String? teacher;
  int? order;
  String? day;
  String? classId;
  int? iV;

 Mun(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV});

  Mun.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['teacher'] = this.teacher;
    data['order'] = this.order;
    data['day'] = this.day;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}

class The {
  String? sId;
  String? name;
  String? teacher;
  int? order;
  String? day;
  String? classId;
  int? iV;

  The(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV});

  The.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['teacher'] = this.teacher;
    data['order'] = this.order;
    data['day'] = this.day;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}


class Wen {
  String? sId;
  String? name;
  String? teacher;
  int? order;
  String? day;
  String? classId;
  int? iV;

  Wen(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV});

  Wen.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['teacher'] = this.teacher;
    data['order'] = this.order;
    data['day'] = this.day;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}


class Tus {
  String? sId;
  String? name;
  String? teacher;
  int? order;
  String? day;
  String? classId;
  int? iV;

  Tus(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV});

 Tus.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['teacher'] = this.teacher;
    data['order'] = this.order;
    data['day'] = this.day;
    data['class_id'] = this.classId;
    data['__v'] = this.iV;
    return data;
  }
}
