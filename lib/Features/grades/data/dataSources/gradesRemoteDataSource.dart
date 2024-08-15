

import 'package:ehsan/Features/grades/data/models/gradesScheduleModel.dart';
import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';





abstract class GradesRemoteDataSource {
  Future<GradesEntity> viewGrades({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class GradesRemoteDataSourceImpl extends GradesRemoteDataSource {
  final ApiService apiService;

  GradesRemoteDataSourceImpl(this.apiService);

  @override
  Future<GradesEntity> viewGrades(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'showStudentMarks');
    GradesEntity entity;
    entity = GradesModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

}
