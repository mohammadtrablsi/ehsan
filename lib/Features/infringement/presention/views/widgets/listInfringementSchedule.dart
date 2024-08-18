import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/Features/Infringement/presention/views/widgets/InfringementItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewInfringement extends StatelessWidget {
  const ListViewInfringement({super.key, required this.data});
  final List<InfringementEntity> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.only(top: 3.h),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InfringementItem(
            isLatOrFirstItem: index == 0
                ? true
                : index == data.length - 1
                    ? true
                    : false,
            data: data[index],
          );
        },
      ),
    );
  }
}
