import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MarksItem extends StatelessWidget {
  const MarksItem({super.key});

  @override
  Widget build(BuildContext context) {
    double opacity = 0.75;
    List<Color> colorList = [
      const Color.fromARGB(255, 208, 237, 202),
      const Color.fromARGB(255, 208, 237, 202),
      const Color(0xFFE6EFFF),
      const Color(0xFFE6EFFF),
      Colors.white,
      Colors.white,
    ];
    List<double> stopsList = const [
      0.0,
      0.22,
      0.22,
      0.44,
      0.44,
      1.0,
    ];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorList,
            stops: stopsList,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(width: 0.05.h, color: Colors.grey)),
      child: Column(
        children: List.generate(6, (index) => _markCardItem()),
      ),
    );
  }

  Widget _markCardItem() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
              start: 2.w, bottom: 1.3.h / 2, top: 1.3.h / 2),
          child: SizedBox(
            width: 50.w,
            child: Text(
              "انكليزي",
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Text(
              "100",
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Text(
              "87",
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
        ),
      ],
    );
  }
}
