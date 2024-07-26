import 'package:ehsan/Features/Auth/presentation/views/login.dart';
import 'package:ehsan/Features/askDoubt/presention/views/askDoubt.dart';
import 'package:ehsan/Features/downloadFiles/presention/downloadFiles.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/pdfView.dart';
import 'package:ehsan/Features/events/presention/views/eventDetails.dart';
import 'package:ehsan/Features/events/presention/views/viewEvents.dart';
import 'package:ehsan/Features/examSchedule/presention/examSchedule.dart';
import 'package:ehsan/Features/grades/presention/views/grades.dart';
import 'package:ehsan/Features/home/presention/views/home.dart';
import 'package:ehsan/Features/metrices/presention/views/metrices.dart';
import 'package:ehsan/Features/onBoarding/presention/views/onBoarding.dart';
import 'package:ehsan/Features/profile/presention/views/profile.dart';
import 'package:ehsan/Features/splashScreen/presention/views/splashScreen.dart';
import 'package:ehsan/Features/tasks/presention/views/tasks.dart';
import 'package:ehsan/Features/tasks/presention/views/updateTask.dart';
import 'package:ehsan/Features/absences/presention/views/absences.dart';
import 'package:ehsan/Features/weeklySchedule/presention/views/weeklySchedule.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kTasksView = '/tasks';
  static const kUpdateTaskView = '/updateTask';
  static const kPdfViewRoute = '/pdfView';
  static const kGradesRoute = '/grades';
  static const kViewEventsRoute = '/viewEvents';
  static const kDownloadFilesRoute = '/downloadFiles';
  static const kAbsencesRoute = '/absences';
  static const kWeeklyScheduleRoute = '/weeklySchedule';
  static const kExamScheduleRoute = '/examSchedule';
  static const kMetricesRoute = '/metrices';
  static const kProfileRoute = '/profile';
  static const kAskDoubtRoute = '/askDoubt';
  static const kHomeRoute = '/home';
  static const kEventDetailsRoute = '/eventDetails';
  static const kOnBoardingRoute = '/onBoarding';
  static const kLoginRoute = '/login';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnBoardingRoute,
        builder: (context, state) => const OnBoarding(),
      ),
      GoRoute(
        path: kLoginRoute,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: kTasksView,
        builder: (context, state) => const Tasks(),
      ),
      GoRoute(
        path: kGradesRoute,
        builder: (context, state) => const Grades(),
      ),
      GoRoute(
        path: kViewEventsRoute,
        builder: (context, state) => const ViewEvents(),
      ),
      GoRoute(
          path: kEventDetailsRoute,
          builder: (context, state) {
            final indexForTag = state.queryParams['indexForTag'];
            return EventDetails(
              indexForTag: int.parse(indexForTag!),
            );
          }),
      GoRoute(
        path: kDownloadFilesRoute,
        builder: (context, state) => const DownloadFiles(),
      ),
      GoRoute(
        path: kPdfViewRoute,
        builder: (context, state) => const PdfView(),
      ),
      GoRoute(
        path: kAbsencesRoute,
        builder: (context, state) => Absences(),
      ),
      GoRoute(
        path: kWeeklyScheduleRoute,
        builder: (context, state) => const WeeklySchedule(),
      ),
      GoRoute(
        path: kExamScheduleRoute,
        builder: (context, state) => const ExamSchedule(),
      ),
      GoRoute(
        path: kMetricesRoute,
        builder: (context, state) => const Metrices(),
      ),
      GoRoute(
        path: kProfileRoute,
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: kAskDoubtRoute,
        builder: (context, state) => const AskDoubt(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: kUpdateTaskView,
        builder: (context, state) {
          final title = state.queryParams['title'];
          final description = state.queryParams['description'];
          final initDate = state.queryParams['initDate'];
          final initTime = state.queryParams['initTime'];
          final index = state.queryParams['index'];
          final categoryId = state.queryParams['categoryId'];
          final id = state.queryParams['id'];

          return UpdateTask(
            title: title!,
            description: description!,
            initDate: initDate!,
            initTime: initTime!,
            index: int.parse(index!),
            categoryId: int.parse(categoryId!),
            id: int.parse(id!),
          );
        },
      ),
    ],
  );
}
