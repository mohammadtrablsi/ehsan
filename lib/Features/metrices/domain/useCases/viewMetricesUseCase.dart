
import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/repos/metricesRepo.dart';








import '../../../../core/errors/failure.dart';



class ViewMetricesUseCase {
  final MetricesRepo metricesRepo;

  ViewMetricesUseCase(this.metricesRepo);

  Future<Either<Failure, MetricesEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await metricesRepo.viewMetrices(header:header,body: body);
  }
}
