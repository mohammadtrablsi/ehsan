import 'package:ehsan/Features/grades/presention/views/manger/viewGradesCubit.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/imageInGrades.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/marksPart.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/percentInGrades.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/shimmerMaskPart.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/shimmerPercentInGrades.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class GradesBody extends StatelessWidget {
  const GradesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: const Column(
              children: [
                Spacer(),
                // SizedBox(
                //   height: 0.5.h,
                // ),
                AppBackgroundImage(),
              ],
            ),
          ),
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const ImageInGrades(),
                  Positioned(
                    bottom: 6.h,
                    child: BlocBuilder<ViewGradesCubit, ViewGradesState>(
                      builder: (context, state) {
                        if (state is ViewGradesSuccess) {
                          return PercentInGrades(data: state.entity);
                        } else {
                          return const ShimmerPercentInGrades();
                        }
                      },
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.symmetric(horizontal: kAppPadding),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      _textsInGrades(),
                      SizedBox(
                        height: 1.h,
                      ),
                      BlocBuilder<ViewGradesCubit, ViewGradesState>(
                        builder: (context, state) {
                          if (state is ViewGradesSuccess) {
                            return MarksPart(data: state.entity);
                          } else {
                            return const ShimmerMarksPart();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textsInGrades() {
    return Column(
      children: [
        Text(
          "ثابر",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          "$name!!",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
