import 'package:ehsan/Features/grades/data/models/gradesScheduleModel.dart';

class GradesEntity {
  final num? fullAverage;
  final List<Exam>? exam;
  final List<Oral>? oral;
  final List<Test>? test;

  GradesEntity(
      {required this.fullAverage,
      required this.exam,
      required this.oral,
      required this.test});
}
