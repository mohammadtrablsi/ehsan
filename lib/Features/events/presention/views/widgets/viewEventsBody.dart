import 'package:ehsan/Features/events/presention/manger/viewEventsCubit.dart';
import 'package:ehsan/Features/events/presention/views/widgets/eventItem.dart';
import 'package:ehsan/Features/events/presention/views/widgets/shimmerEventItem.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/app_router.dart';

class ViewEventsBody extends StatelessWidget {
  const ViewEventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: 'الفعاليات',
        widget: BlocBuilder<ViewEventsCubit, ViewEventsState>(
          builder: (context, state) {
            if (state is ViewEventsSuccess) {
              if (state.entities.isEmpty) {
                return SizedBox(
                    height: 70.h, child: Image.asset(AssetsData.noDataImage));
              } else {
                return Padding(
                  padding:
                      EdgeInsetsDirectional.symmetric(horizontal: kAppPadding),
                  child: ListView.builder(
                    padding: EdgeInsetsDirectional.only(top: 2.h),
                    itemCount: state.entities.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
                        child: InkWell(
                            onTap: () => AppRouter.router.push(
                                "${AppRouter.kEventDetailsRoute}?indexForTag=$index&&idOfEvent=${state.entities[index].id}&&image=${state.entities[index].photo ?? noImage}&&name=${state.entities[index].name}&&desc=${state.entities[index].description}&&date=${state.entities[index].date}&&place=${state.entities[index].place}"),
                            child: EventItem(
                                indexForTag: index,
                                data: state.entities[index])),
                      );
                    },
                  ),
                );
              }
            }
            if (state is ViewEventsFailure) {
              return SizedBox(
                  height: 70.h, child: Image.asset(AssetsData.failedImage));
            } else {
              return Padding(
                padding:
                    EdgeInsetsDirectional.symmetric(horizontal: kAppPadding),
                child: ListView.builder(
                  padding: EdgeInsetsDirectional.only(top: 2.h),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
                      child: const ShimmerEventItem(),
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
