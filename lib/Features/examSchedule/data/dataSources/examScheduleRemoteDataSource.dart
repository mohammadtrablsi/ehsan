import 'package:ehsan/Features/examSchedule/data/models/examScheduleModel.dart';
import 'package:ehsan/Features/examSchedule/domain/entites/examScheduleEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ExamScheduleRemoteDataSource {
  Future<List<ExamScheduleEntity>> viewExamSchedule(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body});
}

class ExamScheduleRemoteDataSourceImpl extends ExamScheduleRemoteDataSource {
  final ApiService apiService;

  ExamScheduleRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<ExamScheduleEntity>> viewExamSchedule(
      {required Map<String, dynamic> header,
      required Map<String, dynamic> body}) async {
    var response = await apiService.get(
        headers: header,
        data: body,
        endPoint:
            'https://ehsanschool.onrender.com/api/showStudentExamSchedule');

    // ExamScheduleEntity entity;
    // entity = ExamScheduleModel.fromJson(response);
     List<ExamScheduleEntity> entity = getExamScheduleList(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }
      List<ExamScheduleEntity> getExamScheduleList(Map<String, dynamic> data) {
    List<ExamScheduleEntity> files = [];
    for (var fileMap in data['data']) {
      files.add(ExamScheduleModel.fromJson(fileMap));
    }
    return files;
  }
}
