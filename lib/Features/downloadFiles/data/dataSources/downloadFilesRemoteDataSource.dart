
import 'package:ehsan/Features/absences/data/models/absencesModel.dart';
import 'package:ehsan/Features/absences/domain/entites/absencesEntity.dart';
import 'package:ehsan/Features/downloadFiles/data/models/downloadFilesModel.dart';
import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/core/utils/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';





abstract class DownloadFilesRemoteDataSource {
  Future<List<DownloadFilesEntity>> viewDownloadFiles({required Map<String, dynamic> header,required Map<String, dynamic> body});
}

class DownloadFilesRemoteDataSourceImpl extends DownloadFilesRemoteDataSource {
  final ApiService apiService;

  DownloadFilesRemoteDataSourceImpl(this.apiService);

  @override
  Future <List<DownloadFilesEntity>> viewDownloadFiles(
      {required Map<String, dynamic> header,required Map<String, dynamic> body}) async {
    var response = await apiService.get(
      headers: header,
        data: body, endPoint: 'https://ehsanschool.onrender.com/api/showStudentFiles');
    // DownloadFilesEntity entity;
    // entity = DownloadFilesModel.fromJson(response);
    List<DownloadFilesEntity> entity = getDownloadFilesList(response);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('userId', entity.id);
    // print("iddddddddddddddddddddddddddddddddddd${entity.id}");
    return entity;
  }

    List<DownloadFilesEntity> getDownloadFilesList(Map<String, dynamic> data) {
    List<DownloadFilesEntity> files = [];
    for (var fileMap in data['data']) {
      files.add(DownloadFilesModel.fromJson(fileMap));
    }
    return files;
  }

}
