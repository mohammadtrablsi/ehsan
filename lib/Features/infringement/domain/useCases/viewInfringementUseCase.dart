
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/Features/infringement/data/repos/infringementRepoImp.dart';
import 'package:ehsan/Features/infringement/domain/repos/infringementRepo.dart';






import '../../../../core/errors/failure.dart';



class ViewInfringementUseCase {
  final InfringementRepoImpl infringementRepoImp=InfringementRepoImpl();

  ViewInfringementUseCase();

  Future<Either<Failure, List<InfringementEntity>>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await infringementRepoImp.viewInfringement(header:header,body: body);
  }
}
