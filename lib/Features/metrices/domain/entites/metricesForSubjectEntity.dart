import 'package:ehsan/Features/metrices/data/models/metricesForSubjectModel.dart';

class MetricesForSubjectEntity {
  final List<Data>? data;
  final num? average;
  final num? totalMarks;
  final num? myTotalMarks;

  MetricesForSubjectEntity(
      {required this.totalMarks,
      required this.myTotalMarks,
      required this.data,
      required this.average});
}
