import 'package:ehsan/Features/home/presention/views/widgets/itemInGrid.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:ehsan/core/utils/functions/appAlert.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class GridPart extends StatelessWidget {
  const GridPart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'image': AssetsData.homeResultsImage,
        'text': 'النتائج',
        'route': AppRouter.kGradesRoute
      },
      {
        'image': AssetsData.homeDateSheetImage,
        'text': 'الغيابات والتأخيرات',
        'route': AppRouter.kAbsencesRoute
      },
      {
        'image': AssetsData.homeAssignmentImage,
        'text': 'الملفات الدراسية',
        'route': AppRouter.kDownloadFilesRoute
      },
      {
        'image': AssetsData.homeDoubtsImage,
        'text': 'اقتراحات وشكاوي',
        'route': AppRouter.kAskDoubtRoute
      },
      {
        'image': AssetsData.homeEventImage,
        'text': 'الفعاليات',
        'route': AppRouter.kViewEventsRoute
      },
      {
        'image': FontAwesomeIcons.chartSimple,
        'text': 'احصائيات',
        'route': AppRouter.kMetricesRoute
      },
      {
        'image': FontAwesomeIcons.calendarDay,
        'text': 'يرنامج الاسبوع',
        'route': AppRouter.kWeeklyScheduleRoute
      },
      {
        'image': AssetsData.homecalendraImage,
        'text': 'برنامج الفحص',
        'route': AppRouter.kExamScheduleRoute
      },
      {
        'image': FontAwesomeIcons.exclamationTriangle,
        'text': 'المخالفات',
        'route': AppRouter.kInfringementRoute
      },
      {
        'image': FontAwesomeIcons.signOut,
        'text': 'تسجيل الخروج',
        'route': AppRouter.kInfringementRoute
      }
    ];
    return AnimationLimiter(
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 2, // Number of columns
        childAspectRatio: 3 / 2.3, // Adjust to make items more square-like
        mainAxisSpacing: 4.0, // Vertical spacing between items
        crossAxisSpacing: 4.0,
        children: List.generate(
          data.length,
          (index) => AnimationConfiguration.staggeredGrid(
            columnCount: 2,
            position: index,
            duration: const Duration(milliseconds: 200),
            child: ScaleAnimation(
              duration: const Duration(seconds: 1),
              child: FadeInAnimation(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(10.sp),
                        onTap: () {
                          if (index != 9) {
                            AppRouter.router.push(data[index]['route']!);
                          } else {
                            return appAlert(
                                context, "هل انت متأكد من تسجيل الخروج؟", () {
                              GoRouter.of(context).go(AppRouter.kLoginRoute);
                              prefs?.clear();
                            });
                          }
                        },
                        child: ItemInGrid(
                          index: index,
                          image: data[index]['image']!,
                          text: data[index]['text']!,
                        ))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
