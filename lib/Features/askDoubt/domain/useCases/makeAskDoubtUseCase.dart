
import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';
import 'package:ehsan/Features/askDoubt/domain/repos/AskDoubtRepo.dart';

import '../../../../core/errors/failure.dart';


class MakeAskDoubtUseCase  {
  final AskDoubtRepo askDoubtRepo;

  MakeAskDoubtUseCase(this.askDoubtRepo);


  Future<Either<Failure, AskDoubtEntity>> call(
      Map<String, dynamic> header,Map<String, dynamic> body) async {
    return await askDoubtRepo.makeAskDoubt(header:header,body: body);
  }
}
