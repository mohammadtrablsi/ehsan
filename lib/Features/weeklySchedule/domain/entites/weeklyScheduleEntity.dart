import 'package:ehsan/Features/weeklySchedule/data/models/weeklyScheduleModel.dart';

class WeeklyScheduleEntity {
  List<Son>? son;
  List<Mun>? mun;
  List<The>? the;
  List<Wen>? wen;
  List<Tus>? tus;
  WeeklyScheduleEntity(
      {required this.son,
      required this.mun,
      required this.the,
      required this.wen,
      required this.tus});
}
