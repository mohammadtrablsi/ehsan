import 'package:ehsan/Features/absences/data/models/absencesModel.dart';

class AbsencseEntity {
    final List<Delay>? delays;
  final List<Absence>? absences;

  AbsencseEntity({
    required this.delays,
    required this.absences
  });
}
