import 'package:ehsan/Features/metrices/data/models/subjectsModel.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesForSubjectCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewSubjectsCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/whichCubitInMetricesCubit.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/animatedSubjectsInMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/lineMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/metricesInMetricesPage.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/shimmerLineMetrices.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/shimmerMetricesInMetricesPage.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MetricesBody extends StatelessWidget {
  const MetricesBody({super.key});

  @override
  Widget build(BuildContext context) {
    final viewMetricesForSubjectCubit =
        context.read<ViewMetricesForSubjectCubit>();
    final viewsSubjectsCubit = context.read<ViewSubjectsCubit>();
    return Scaffold(
      body: AppHeader(
          text: 'احصائيات',
          widget: Padding(
            padding: EdgeInsetsDirectional.only(
                top: 3.h, end: kAppPadding, start: kAppPadding),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<ViewSubjectsCubit, ViewSubjectsState>(
                    builder: (context, state) {
                      if (state is ViewSubjectsSuccess) {
                        if (viewsSubjectsCubit.data.isEmpty) {
                          viewsSubjectsCubit.data
                              .add(Datas(name: "جميع المواد", sId: "fkfkfkfk"));
                          viewsSubjectsCubit.data.addAll(state.entity.data!);
                        }
                        return AnimatedSubjectsInMetrices(
                          data: state.entity,
                        );
                      } else {
                        return SizedBox(
                          height: 4.h,
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     viewMetricesForSubjectCubit.whoIsPressed==0?BlocBuilder<ViewMetricesCubit, ViewMetricesState>(
                  //       builder: (context, state) {
                  //         if (state is ViewMetricesSuccess) {
                  //           return MetricesInMetricesPage(
                  //             data: state.entity,
                  //           );
                  //         } else {
                  //           return const ShimmerMetricesInMetricesPage();
                  //         }
                  //       },
                  //     ):BlocBuilder<ViewMetricesForSubjectCubit, ViewMetricesforSubjectState>(
                  //       builder: (context, state) {
                  //         if (state is ViewMetricesforSubjectSuccess) {
                  //           return MetricesInMetricesPage(
                  //             data: state.entity,
                  //           );
                  //         } else {
                  //           return const ShimmerMetricesInMetricesPage();
                  //         }
                  //       },
                  //     ),
                  //   ],
                  // ),
                  BlocBuilder<WhichCubitInMetricesCubit,
                      WhichCubitInMetricesState>(
                    builder: (context, state) {
                      if (state is CubitForMetricesForSubject) {
                        return BlocBuilder<ViewMetricesForSubjectCubit,
                            ViewMetricesforSubjectState>(
                          builder: (context, state) {
                            if (state is ViewMetricesforSubjectSuccess) {
                              return MetricesInMetricesPage(
                                  dataForSubject: state.entity,
                                  forSubject: true);
                            } else {
                              return const ShimmerMetricesInMetricesPage();
                            }
                          },
                        );
                      } else {
                        return BlocBuilder<ViewMetricesCubit,
                            ViewMetricesState>(
                          builder: (context, state) {
                            if (state is ViewMetricesSuccess) {
                              return MetricesInMetricesPage(
                                  data: state.entity, forSubject: false);
                            } else {
                              return const ShimmerMetricesInMetricesPage();
                            }
                          },
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  BlocBuilder<WhichCubitInMetricesCubit,
                      WhichCubitInMetricesState>(
                    builder: (context, state) {
                      if (state is CubitForMetricesForSubject) {
                        return BlocBuilder<ViewMetricesForSubjectCubit,
                            ViewMetricesforSubjectState>(
                          builder: (context, state) {
                            if (state is ViewMetricesforSubjectSuccess) {
                              // print(
                              //     "llllllllllllllllllll${state.entity.data!.length}");
                              return LineMetrices(
                                dataForSubject: state.entity,
                                forSubject: true,
                              );
                            } else {
                              return const ShimmerLineMetrices();
                            }
                          },
                        );
                      } else {
                        return BlocBuilder<ViewMetricesCubit,
                            ViewMetricesState>(
                          builder: (context, state) {
                            if (state is ViewMetricesSuccess) {
                              return LineMetrices(
                                data: state.entity,
                                forSubject: false,
                              );
                            } else {
                              return const ShimmerLineMetrices();
                            }
                          },
                        );
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
