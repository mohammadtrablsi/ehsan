import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/domain/repos/metricesRepo.dart';









import '../../../../core/errors/failure.dart';



class ViewMetricesForSubjectUseCase {
  final  MetricesRepo metricesRepo;

  ViewMetricesForSubjectUseCase(this.metricesRepo);

  Future<Either<Failure, MetricesForSubjectEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body,String id) async {
    return await metricesRepo.viewMetricesForSubject(header:header,body: body,id: id);
  }
}
