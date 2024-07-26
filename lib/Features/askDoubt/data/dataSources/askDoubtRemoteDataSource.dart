import 'package:ehsan/Features/askDoubt/data/models/askDoubtModel.dart';
import 'package:ehsan/Features/askDoubt/domain/entites/askDoubtEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AskDoubtRemoteDataSource {
  Future<AskDoubtEntity> makeAskDoubt(
      {required Map<String, dynamic> headers,
      required Map<String, dynamic> body});
}

class AskDoubtRemoteDataSourceImpl extends AskDoubtRemoteDataSource {
  final ApiService apiService;

  AskDoubtRemoteDataSourceImpl(this.apiService);

  @override
  Future<AskDoubtEntity> makeAskDoubt(
      {required Map<String, dynamic> headers,
      required Map<String, dynamic> body}) async {
    var response = await apiService.post(
        data: body,
        endPoint: 'https://dummyjson.com/auth/AskDoubt',
        headers: headers);
    AskDoubtEntity entity;
    entity = AskDoubtModel.fromJson(response);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('userId', entity.id);
    print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }
}
