
import 'package:ehsan/Features/Events/data/models/EventsModel.dart';
import 'package:ehsan/Features/Events/domain/entites/EventsEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';





abstract class EventsRemoteDataSource {
  Future<EventsEntity> viewEvents({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class EventsRemoteDataSourceImpl extends EventsRemoteDataSource {
  final ApiService apiService;

  EventsRemoteDataSourceImpl(this.apiService);

  @override
  Future<EventsEntity> viewEvents(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'https://dummyjson.com/auth/Events');
    EventsEntity entity;
    entity = EventsModel.fromJson(response);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('userId', entity.id);
    print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

}
