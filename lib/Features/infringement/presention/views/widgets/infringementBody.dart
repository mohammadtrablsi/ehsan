import 'dart:ui';

import 'package:ehsan/Features/Infringement/presention/manger/viewInfringementCubit.dart';
import 'package:ehsan/Features/infringement/presention/views/widgets/listInfringementSchedule.dart';
import 'package:ehsan/Features/infringement/presention/views/widgets/shimmerListViewInfringement.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class InfringementBody extends StatelessWidget {
  const InfringementBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: "violation",
        widget: Stack(
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
                  Opacity(
                    opacity: 0.6,
                    child: AppBackgroundImage(),
                  ),
                ],
              ),
            ),
            BlocBuilder<ViewInfringementCubit, ViewInfringementState>(
              builder: (context, state) {
                if (state is ViewInfringementSuccess) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 3.h),
                    child: ListViewInfringement(data: state.entity),
                  );
                } else {
                  return const ShimmerListViewInfringement();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
