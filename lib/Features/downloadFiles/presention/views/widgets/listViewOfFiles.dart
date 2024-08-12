import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/fileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewOfFiles extends StatelessWidget {
  const ListViewOfFiles({super.key, required this.data});
  final List<DownloadFilesEntity> data;

  @override
  Widget build(BuildContext context) {
    print(
        "00000000000000000000000000000000000000000000000000000${data.length}");
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
          child: FileItem(data:data[index]),
        );
      },
    ));
  }
}
