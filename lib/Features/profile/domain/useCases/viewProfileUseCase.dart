
import 'package:dartz/dartz.dart';
import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/Features/profile/domain/repos/profileRepo.dart';









import '../../../../core/errors/failure.dart';



class ViewProfileUseCase {
  final ProfileRepo profileRepo;

  ViewProfileUseCase(this.profileRepo);

  Future<Either<Failure, ProfileEntity>> call(
      Map<String, dynamic> header,Map<String,dynamic>body) async {
    return await profileRepo.viewProfile(header:header,body: body);
  }
}
