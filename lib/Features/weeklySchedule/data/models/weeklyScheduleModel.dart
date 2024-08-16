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
          ? (json['son'] as List).map((v) => Son.fromJson(v)).toList()
          : null,
      mun: json['mun'] != null
          ? (json['mun'] as List).map((v) => Mun.fromJson(v)).toList()
          : null,
      the: json['the'] != null
          ? (json['the'] as List).map((v) => The.fromJson(v)).toList()
          : null,
      wen: json['wen'] != null
          ? (json['wen'] as List).map((v) => Wen.fromJson(v)).toList()
          : null,
      tus: json['tus'] != null
          ? (json['tus'] as List).map((v) => Tus.fromJson(v)).toList()
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
  String? from;
  String? to;

  Son(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV,
      this.from,
      this.to});

  Son.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
    from = json['from'];
    to = json['to'];
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
    data['from'] = this.from;
    data['to'] = this.to;
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
  String? from;
  String? to;

  Mun(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV,
      this.from,
      this.to});

  Mun.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
    from = json['from'];
    to = json['to'];
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
    data['from'] = this.from;
    data['to'] = this.to;
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
  String? from;
  String? to;

  The(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV,
      this.from,
      this.to});

  The.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
    from = json['from'];
    to = json['to'];
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
    data['from'] = this.from;
    data['to'] = this.to;
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
  String? from;
  String? to;

  Wen(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV,
      this.from,
      this.to});

  Wen.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
    from = json['from'];
    to = json['to'];
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
    data['from'] = this.from;
    data['to'] = this.to;
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
  String? from;
  String? to;

  Tus(
      {this.sId,
      this.name,
      this.teacher,
      this.order,
      this.day,
      this.classId,
      this.iV,
      this.from,
      this.to});

  Tus.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    teacher = json['teacher'];
    order = json['order'];
    day = json['day'];
    classId = json['class_id'];
    iV = json['__v'];
    from = json['from'];
    to = json['to'];
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
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}