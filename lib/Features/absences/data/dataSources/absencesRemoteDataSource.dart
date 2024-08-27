import 'package:ehsan/Features/absences/data/models/absencesModel.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AbsencseRemoteDataSource {
  Future<AbsencseEntity> viewAbsencse(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class AbsencseRemoteDataSourceImpl extends AbsencseRemoteDataSource {
  final ApiService apiService;

  AbsencseRemoteDataSourceImpl(this.apiService);

  @override
  Future<AbsencseEntity> viewAbsencse(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header, data: body, endPoint: 'showStudentAbsence');
    AbsencseEntity entity;
    entity = AbsencseModel.fromJson(response);
    return entity;
  }
}
