





import 'package:ehsan/Features/events/data/models/eventsModel.dart';
import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';

abstract class EventsRemoteDataSource {
  Future<List<EventsEntity>> viewEvents({required Map<String, dynamic> header,required Map<String, dynamic> body});
  Future<EventsEntity>  registerOnEvent({required Map<String, dynamic> header,required Map<String, dynamic> body});
  Future<EventsEntity>  unRegisterOnEvent({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class EventsRemoteDataSourceImpl extends EventsRemoteDataSource {
  final ApiService apiService;

  EventsRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<EventsEntity>> viewEvents(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'showEvents');
    // EventsEntity entity;
    // entity = EventsModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    List<EventsEntity> entity = getEventsList(response);
    return entity;
  }


  @override
  Future<EventsEntity>  registerOnEvent(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.post(
      headers: header,
        data: body, endPoint: 'registerEvent');
    EventsEntity entity;
    entity = EventsModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    // List<EventsEntity> entity = getEventsList(response);
    return entity;
  }
    @override
  Future<EventsEntity>  unRegisterOnEvent(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.post(
      headers: header,
        data: body, endPoint: 'unRegisterEvent');
    EventsEntity entity;
    entity = EventsModel.fromJson(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    // List<EventsEntity> entity = getEventsList(response);
    return entity;
  }
     List<EventsEntity> getEventsList(Map<String, dynamic> data) {
    List<EventsEntity> files = [];
    for (var eventMap in data['data']) {
      files.add(EventsModel.fromJson(eventMap));
    }
    return files;
  }

}
