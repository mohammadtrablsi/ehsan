import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:ehsan/Features/grades/presention/views/widgets/marksItem.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class MarksPart extends StatelessWidget {
  const MarksPart({super.key, required this.data});
  final GradesEntity data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        // height: 41.56.h,
        child: ListView.builder(
      padding: EdgeInsetsDirectional.only(bottom: 1.h),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: ExpansionTile(
                shape: Border.all(color: Colors.transparent),
                collapsedIconColor: kPrimaryColor,
                title: _textFormarks(index),
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  MarksItem(data: data, indexo: index),
                ],
              ),
            ),
          ],
        );
      },
    ));
  }

  Widget _textFormarks(int index) {
    return Text(
      index == 0
          ? "امتحان"
          : index == 1
              ? "شفهي"
              : "مذاكرة",
      style: TextStyle(
          fontSize: 11.5.sp, fontWeight: FontWeight.w600, color: kPrimaryColor),
    );
  }
}
