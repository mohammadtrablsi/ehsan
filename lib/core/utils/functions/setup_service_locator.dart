import 'package:ehsan/Features/absences/data/dataSources/absencesRemoteDataSource.dart';
import 'package:ehsan/Features/absences/data/repos/absencesRepoImp.dart';
import 'package:ehsan/Features/askDoubt/data/dataSources/askDoubtRemoteDataSource.dart';
import 'package:ehsan/Features/askDoubt/data/repos/askDoubtRepoImp.dart';
import 'package:ehsan/Features/downloadFiles/data/dataSources/downloadFilesRemoteDataSource.dart';
import 'package:ehsan/Features/downloadFiles/data/repos/downloadFilesRepoImp.dart';
import 'package:ehsan/Features/events/data/dataSources/eventsRemoteDataSource.dart';
import 'package:ehsan/Features/events/data/repos/eventsRepoImp.dart';
import 'package:dio/dio.dart';
import 'package:ehsan/Features/examSchedule/data/dataSources/examScheduleRemoteDataSource.dart';
import 'package:ehsan/Features/examSchedule/data/repos/examScheduleRepoImp.dart';
import 'package:ehsan/Features/grades/data/dataSources/gradesRemoteDataSource.dart';
import 'package:ehsan/Features/grades/data/repos/gradesRepoImp.dart';
import 'package:ehsan/Features/home/data/dataSources/homeRemoteDataSource.dart';
import 'package:ehsan/Features/home/data/repos/homeRepoImp.dart';
import 'package:ehsan/Features/infringement/data/dataSources/infringementRemoteDataSource.dart';
import 'package:ehsan/Features/infringement/data/repos/infringementRepoImp.dart';
import 'package:ehsan/Features/metrices/data/dataSources/metricesRemoteDataSource.dart';
import 'package:ehsan/Features/metrices/data/repos/metricesRepoImp.dart';
import 'package:ehsan/Features/profile/data/dataSources/profileRemoteDataSource.dart';
import 'package:ehsan/Features/profile/data/repos/profileRepoImp.dart';
import 'package:ehsan/Features/weeklySchedule/data/dataSources/weeklyScheduleRemoteDataSource.dart';
import 'package:ehsan/Features/weeklySchedule/data/repos/weeklyScheduleRepoImp.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/Auth/data/dataSources/loginRemoteDataSource.dart';
import '../../../Features/Auth/data/repos/loginRepoImp.dart';
import '../api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<LoginRepoImpl>(
    LoginRepoImpl(
      loginRemoteDataSource: LoginRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<DownloadFilesRepoImpl>(
    DownloadFilesRepoImpl(
      downloadFilesRemoteDataSource: DownloadFilesRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<EventsRepoImpl>(
    EventsRepoImpl(
      eventsRemoteDataSource: EventsRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<AbsencseRepoImpl>(
    AbsencseRepoImpl(
      absencseRemoteDataSource: AbsencseRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<AskDoubtRepoImpl>(
    AskDoubtRepoImpl(
      askDoubtRemoteDataSource: AskDoubtRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<WeeklyScheduleRepoImpl>(
    WeeklyScheduleRepoImpl(
      weeklyScheduleRemoteDataSource: WeeklyScheduleRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<ExamScheduleRepoImpl>(
    ExamScheduleRepoImpl(
      examScheduleRemoteDataSource: ExamScheduleRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<ProfileRepoImpl>(
    ProfileRepoImpl(
      profileRemoteDataSource: ProfileRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<GradesRepoImpl>(
    GradesRepoImpl(
      gradesRemoteDataSource: GradesRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<MetricesRepoImpl>(
    MetricesRepoImpl(
      metricesRemoteDataSource: MetricesRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  // getIt.registerSingleton<InfringementRepoImpl>(
  //   InfringementRepoImpl(
  //     infringementRemoteDataSource: InfringementRemoteDataSourceImpl(
  //       getIt.get<ApiService>(),
  //     ),
  //   ),
  // );
}
