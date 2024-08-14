import 'package:ehsan/Features/Profile/domain/entites/ProfileEntity.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/dataInProfileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DataInProfilePart extends StatelessWidget {
  DataInProfilePart({super.key, required this.entity});
  final ProfileEntity entity;

  @override
  Widget build(BuildContext context) {
    setDataFromEntity();
    List<Map<String, String>> data = [
      {'label': 'birthadate', 'content': '2020-2021'},
      {'label': 'birthPlace', 'content': 'VI'},
      {'label': 'fatherName', 'content': 'shaba1'},
      {'label': 'motherName', 'content': '28/1/2003'},
      {'label': 'joinDate', 'content': 'Monika'},
      {'label': 'teleNum', 'content': 'Father Name'},
      {'label': 'address', 'content': 'Damascus'}
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
                      ? dataFromEntity[indexo]
                      : dataFromEntity[indexo + 1],
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
                  content: dataFromEntity[index + 4],
                ),
              )),
    );
  }

  List<String> dataFromEntity = [];
  void setDataFromEntity() {
    dataFromEntity.add("l"); //entity.birthadate!
    dataFromEntity.add(entity.birthPlace!);
    dataFromEntity.add(entity.fatherName!);
    dataFromEntity.add(entity.motherName!);
    dataFromEntity.add(entity.joinDate!);
    dataFromEntity.add(entity.teleNum!);
    dataFromEntity.add(entity.address!);
  }
}
