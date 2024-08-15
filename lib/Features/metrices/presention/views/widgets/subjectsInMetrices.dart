import 'package:ehsan/Features/metrices/data/models/metricesForSubjectModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/presention/manger/viewMetricesForSubjectCubit.dart';
import 'package:ehsan/Features/metrices/presention/manger/whichCubitInMetricesCubit.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SubjectsInMetrices extends StatefulWidget {
  const SubjectsInMetrices({super.key});

  @override
  State<SubjectsInMetrices> createState() => _SubjectsInMetricesState();
}

class _SubjectsInMetricesState extends State<SubjectsInMetrices> {
  @override
  Widget build(BuildContext context) {
    final viewMetricesForSubjectCubit =
        context.read<ViewMetricesForSubjectCubit>();
    final whichCubitInMetricesCubit = context.read<WhichCubitInMetricesCubit>();
    List<String> subjects = [
      'all',
      'math',
      'english',
      'arabic',
      'frensh',
      'science',
    ];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.05.h, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: _subjectCard(
          subjects, viewMetricesForSubjectCubit, whichCubitInMetricesCubit),
    );
  }

  Widget _subjectCard(List<String> subjects, viewMetricesForSubjectCubit,
      whichCubitInMetricesCubit) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              subjects.length,
              (index) => BlocBuilder<ViewMetricesForSubjectCubit,
                      ViewMetricesforSubjectState>(builder: (context, state) {
                    if (state is ViewMetricesforSubjectSuccess) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(10.sp),
                        onTap: () {
                          viewMetricesForSubjectCubit.setWhoIsPressed(
                              index, state.entity);
                          whichCubitInMetricesCubit.setWhoIsPressed(index);
                          viewMetricesForSubjectCubit.viewMetricesForSubject({"Authorization":"Bearer $token"}, {
                            "": ""
                          });
                        },
                        child: _subjectItem(subjects[index], index,
                            viewMetricesForSubjectCubit),
                      );
                    } else {
                      return InkWell(
                        borderRadius: BorderRadius.circular(10.sp),
                        onTap: () {
                          viewMetricesForSubjectCubit.setWhoIsPressed(
                              index,
                              MetricesForSubjectEntity(
                                  data: [Data()], average: 0.0));
                          whichCubitInMetricesCubit.setWhoIsPressed(index);
                          viewMetricesForSubjectCubit.viewMetricesForSubject({
                            "Authorization":
                                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YWQ0NDIwMDcwNDJjZTk3MmMwYTBkMCIsImlhdCI6MTcyMjg1NDI4M30.qbPLJ2MoZrHd0b2-_5Ndq8hDkHbu16PlMH1ByYTheBM"
                          }, {
                            "": ""
                          });
                        },
                        child: _subjectItem(subjects[index], index,
                            viewMetricesForSubjectCubit),
                      );
                      ;
                    }
                  })),
        ));
  }

  Widget _subjectItem(String text, int index, viewMetricesForSubjectCubit) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.25.w, horizontal: 4.5.w),
      decoration: BoxDecoration(
          color: index != viewMetricesForSubjectCubit.whoIsPressed
              ? Colors.white
              : kPrimaryColor,
          borderRadius: BorderRadius.circular(10.sp)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
            color: index != viewMetricesForSubjectCubit.whoIsPressed
                ? Colors.black87
                : kContentColor1),
      ),
    );
  }
}
