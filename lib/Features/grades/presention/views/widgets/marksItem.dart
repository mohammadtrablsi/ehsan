import 'package:ehsan/Features/grades/domain/entites/gradesEntity.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MarksItem extends StatelessWidget {
  final int indexo;
  final GradesEntity data;
  MarksItem({super.key, required this.indexo, required this.data});
  // List data = [
  //   {'subject': 'انكليزي', 'mark': 100},
  //   {'subject': 'رياضيات', 'mark': 70},
  //   {'subject': 'تاريخ', 'mark': 50},
  //   {'subject': 'علوم', 'mark': 70},
  //   {'subject': "روسي", 'mark': 20},
  //   {'subject': 'عربي', 'mark': 100},
  // ];

  @override
  Widget build(BuildContext context) {
    List entity = [];
    indexo == 0
        ? entity = data.exam!
        : indexo == 1
            ? entity = data.oral!
            : entity = data.test!;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(width: 0.05.h, color: Colors.grey)),
      child: Column(
        children: List.generate(
            entity.length, (index) => _markCardItem(index, entity)),
      ),
    );
  }

  Widget _markCardItem(int index, List entity) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 4.w),
          child: SizedBox(
            width: 50.w,
            child: Text(
              entity[index].subjectId.name,
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
                entity[index].fullMark.toString(),
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
                  : index == entity.length - 1
                      ? BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10.sp),
                        )
                      : BorderRadius.circular(0.sp),
              color: entity[index].mark >= 40
                  ? const Color.fromARGB(255, 200, 243,
                      197) //const Color.fromARGB(255, 208, 237, 202)
                  : const Color.fromARGB(255, 254, 211, 211),
            ),
            child: Center(
              child: Text(
                entity[index].mark.toString(),
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
