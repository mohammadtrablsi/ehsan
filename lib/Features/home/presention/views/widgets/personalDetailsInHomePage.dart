import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PersonalDetailsInHomePage extends StatelessWidget {
  const PersonalDetailsInHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20.sp);
    TextStyle style2 = TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontWeight: FontWeight.w300,
        fontSize: 13.sp);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hi $name', style: style1),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Text('Grade $grade  |  Class $section', style: style2),
            const Spacer(),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 6.w),
              child: _button(),
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        _year(),
      ],
    );
  }

  Widget _year() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.sp)),
      child: const Text(
        '2020-2021',
        style: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  Widget _button() {
    return InkWell(
      onTap: () {
        AppRouter.router.push(AppRouter.kProfileRoute);
      },
      child: const Icon(Icons.arrow_right, color: kContentColor1),
    );
  }
}
