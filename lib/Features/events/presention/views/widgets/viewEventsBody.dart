import 'package:ehsan/Features/events/presention/manger/viewEventsCubit.dart';
import 'package:ehsan/Features/events/presention/views/widgets/eventItem.dart';
import 'package:ehsan/Features/events/presention/views/widgets/shimmerEventItem.dart';
import 'package:ehsan/constants.dart';
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
                              "${AppRouter.kEventDetailsRoute}?indexForTag=$index"),
                          child: EventItem(
                              indexForTag: index, data: state.entities[index])),
                    );
                  },
                ),
              );
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
