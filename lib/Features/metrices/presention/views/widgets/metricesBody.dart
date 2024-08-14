import 'package:ehsan/Features/home/presention/views/widgets/metricesInHomePage.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/animatedSubjectsInMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/lineMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesInMetricesPage.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/shimmerLineMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/shimmerMetricesInMetricesPage.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/subjectsInMetrices.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MetricesBody extends StatelessWidget {
  const MetricesBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
          text: 'charts',
          widget: Padding(
            padding: EdgeInsetsDirectional.only(
                top: 3.h, end: kAppPadding, start: kAppPadding),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AnimatedSubjectsInMetrices(),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<ViewMetricesCubit, ViewMetricesState>(
                        builder: (context, state) {
                          if (state is ViewMetricesSuccess) {
                            return MetricesInMetricesPage(
                              data: state.entity,
                            );
                          } else {
                            return const ShimmerMetricesInMetricesPage();
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  BlocBuilder<ViewMetricesCubit, ViewMetricesState>(
                    builder: (context, state) {
                      if (state is ViewMetricesSuccess) {
                        return LineMetrices(data: state.entity);
                      } else {
                        return const ShimmerLineMetrices();
                      }
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
