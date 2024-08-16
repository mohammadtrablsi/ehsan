class MetricesEntity {
  final num? averageTest;
  final num? averageOral;
  final num? averageExam;
  final num? fullAverage;
  final num? totalMarks;
  final num? myTotalMarks;

  MetricesEntity(
      {required this.totalMarks,
      required this.myTotalMarks,
      required this.averageTest,
      required this.averageOral,
      required this.averageExam,
      required this.fullAverage});
}
