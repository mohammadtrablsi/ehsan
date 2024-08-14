import 'package:ehsan/Features/home/presention/manger/viewHomeCubit.dart';
import 'package:ehsan/Features/home/presention/views/widgets/gridPart.dart';
import 'package:ehsan/Features/home/presention/views/widgets/metricesInHomePage.dart';
import 'package:ehsan/Features/home/presention/views/widgets/personalDetailsInHomePage.dart';
import 'package:ehsan/Features/home/presention/views/widgets/shimmerMetricesInHomePage.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          AppHeader(
            height: 35.h,
            widget: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 3.h, start: kAppPadding / 2, end: kAppPadding / 2),
                  child: const GridPart(),
                ))
              ],
            ),
            widgetInHeader: Padding(
              padding: EdgeInsetsDirectional.only(start: 5.w, top: 7.h),
              child: const PersonalDetailsInHomePage(),
            ),
          ),
          Positioned(
              top: 22.h,
              child: BlocBuilder<ViewHomeCubit, ViewHomeState>(
                builder: (context, state) {
                  if (state is ViewHomeSuccess) {
                    return MetricesInHomePage(data:state.entity);
                  } else {
                    return const ShimmerMetricesInHomePage();
                  }
                },
              )),
        ],
      ),
    );
  }
}
