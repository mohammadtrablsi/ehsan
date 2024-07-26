
import 'package:dartz/dartz.dart';

import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/absences/domain/repos/absencesRepo.dart';
import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/Features/home/domain/repos/homeRepo.dart';






import '../../../../core/errors/failure.dart';



class ViewHomeUseCase {
  final HomeRepo homeRepo;

  ViewHomeUseCase(this.homeRepo);

  Future<Either<Failure, HomeEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await homeRepo.viewHome(header:header,body: body);
  }
}
