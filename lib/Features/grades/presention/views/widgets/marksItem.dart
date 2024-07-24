import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MarksItem extends StatelessWidget {
  MarksItem({super.key});
  List data = [
    {'subject': 'انكليزي', 'mark': 100},
    {'subject': 'رياضيات', 'mark': 70},
    {'subject': 'تاريخ', 'mark': 50},
    {'subject': 'علوم', 'mark': 70},
    {'subject': "روسي", 'mark': 20},
    {'subject': 'عربي', 'mark': 100},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(width: 0.05.h, color: Colors.grey)),
      child: Column(
        children: List.generate(6, (index) => _markCardItem(index)),
      ),
    );
  }

  Widget _markCardItem(int index) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 4.w),
          child: SizedBox(
            width: 50.w,
            child: Text(
              data[index]['subject'],
              style: TextStyle(fontSize: 11.5.sp),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:
                EdgeInsetsDirectional.only(top: 1.3.h / 2, bottom: 1.3.h / 2),
            decoration: const BoxDecoration(
              color: Color(0xFFE6EFFF),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:
                EdgeInsetsDirectional.only(top: 1.3.h / 2, bottom: 1.3.h / 2),
            decoration: BoxDecoration(
              borderRadius: index == 0
                  ? BorderRadiusDirectional.only(
                      topEnd: Radius.circular(10.sp),
                    )
                  : index == 5
                      ? BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10.sp),
                        )
                      : BorderRadius.circular(0.sp),
              color: data[index]['mark'] >= 60
                  ? Color.fromARGB(255, 200, 243,
                      197) //const Color.fromARGB(255, 208, 237, 202)
                  : Color.fromARGB(255, 254, 211, 211),
            ),
            child: Center(
              child: Text(
                data[index]['mark'].toString(),
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
