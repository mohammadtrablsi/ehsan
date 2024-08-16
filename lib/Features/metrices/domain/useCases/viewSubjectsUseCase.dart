
import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';
import 'package:ehsan/Features/metrices/domain/repos/metricesRepo.dart';








import '../../../../core/errors/failure.dart';



class ViewSubjectsUseCase {
  final MetricesRepo metricesRepo;

  ViewSubjectsUseCase(this.metricesRepo);

  Future<Either<Failure, SubjectsEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await metricesRepo.viewSubjects(header:header,body: body);
  }
}
