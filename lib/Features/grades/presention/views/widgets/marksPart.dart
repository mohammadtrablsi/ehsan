import 'package:ehsan/Features/grades/presention/views/widgets/marksItem.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class MarksPart extends StatelessWidget {
  const MarksPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        // height: 41.56.h,
        child: ListView.builder(
      padding: EdgeInsetsDirectional.only(bottom: 1.h),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: ExpansionTile(
                shape: Border.all(color: Colors.transparent),
                collapsedIconColor: kPrimaryColor,
                title: _textFormarks(),
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  const MarksItem(),
                ],
              ),
            ),
          ],
        );
      },
    ));
  }

  Widget _textFormarks() {
    return Text(
      "مذاكرة1",
      style: TextStyle(
          fontSize: 10.sp, fontWeight: FontWeight.w600, color: kPrimaryColor),
    );
  }
}
