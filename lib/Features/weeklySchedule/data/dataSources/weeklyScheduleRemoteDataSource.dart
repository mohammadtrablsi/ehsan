






import 'package:ehsan/Features/WeeklySchedule/domain/entites/WeeklyScheduleEntity.dart';
import 'package:ehsan/Features/weeklySchedule/data/models/weeklyScheduleModel.dart';
import 'package:ehsan/core/utils/api_service.dart';

abstract class WeeklyScheduleRemoteDataSource {
  Future<WeeklyScheduleEntity> viewWeeklySchedule({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class WeeklyScheduleRemoteDataSourceImpl extends WeeklyScheduleRemoteDataSource {
  final ApiService apiService;

  WeeklyScheduleRemoteDataSourceImpl(this.apiService);

  @override
  Future<WeeklyScheduleEntity> viewWeeklySchedule(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'showStudentWeekSchedule');
    WeeklyScheduleEntity entity;
    entity = WeeklyScheduleModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

}
