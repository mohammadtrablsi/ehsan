import 'package:ehsan/Features/home()/presention/views/widgets/itemInGrid.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';

class GridPart extends StatelessWidget {
  const GridPart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> data = [
      {
        'image': AssetsData.homeResultsImage,
        'text': 'result',
        'route': AppRouter.kGradesRoute
      },
      {
        'image': AssetsData.homeDateSheetImage,
        'text': 'absences',
        'route': AppRouter.kAbsencesRoute
      },
      {
        'image': AssetsData.homeAssignmentImage,
        'text': 'files',
        'route': AppRouter.kDownloadFilesRoute
      },
      {
        'image': AssetsData.homeDoubtsImage,
        'text': 'ask doubts',
        'route': AppRouter.kAskDoubtRoute
      },
      {
        'image': AssetsData.homeEventImage,
        'text': 'event',
        'route': AppRouter.kViewEventsRoute
      },
      {
        'image': AssetsData.homeLogoutImage,
        'text': 'Metrices',
        'route': AppRouter.kMetricesRoute
      },
      {
        'image': AssetsData.homecalendraImage,
        'text': 'weekly schedule',
        'route': AppRouter.kWeeklyScheduleRoute
      },
      {
        'image': AssetsData.homecalendraImage,
        'text': 'exam schedule',
        'route': AppRouter.kExamScheduleRoute
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
                          AppRouter.router.push(data[index]['route']!);
                        },
                        child: ItemInGrid(
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
