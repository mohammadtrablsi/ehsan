import 'package:ehsan/Features/profile/presention/views/widgets/dataInProfileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DataInProfilePart extends StatelessWidget {
  const DataInProfilePart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> data = [
      {'label': 'Academic Year', 'content': '2020-2021'},
      {'label': 'Admission Class', 'content': 'VI'},
      {'label': 'class', 'content': 'shaba1'},
      {'label': 'Date Of Birthday', 'content': '28/1/2003'},
      {'label': 'Mother Name', 'content': 'Monika'},
      {'label': 'Father Name', 'content': 'Father Name'},
      {'label': 'Address', 'content': 'Damascus'}
    ];
    return Column(
      children: [
        _horizontalItemsPart(data),
        _verticalItemsPart(data),
      ],
    );
  }

  Widget _pair(List<Map<String, String>> data, int indexo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          2,
          (index) => Expanded(
                  child: Padding(
                padding: index == 0
                    ? EdgeInsetsDirectional.only(end: 3.w)
                    : EdgeInsetsDirectional.only(start: 3.w),
                child: DataInProfileItem(
                  title: index == 0
                      ? data[indexo]['label']!
                      : data[indexo + 1]['label']!,
                  content: index == 0
                      ? data[indexo]['content']!
                      : data[indexo + 1]['content']!,
                ),
              ))),
    );
  }

  Widget _horizontalItemsPart(List<Map<String, String>> data) {
    return Column(
      children: List.generate(
          2,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 4.h),
                child: _pair(data, index),
              )),
    );
  }

  Widget _verticalItemsPart(List<Map<String, String>> data) {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsetsDirectional.only(bottom: 4.h),
                child: DataInProfileItem(
                  title: data[index + 4]['label']!,
                  content: data[index + 4]['content']!,
                ),
              )),
    );
  }
}
