import 'package:ehsan/Features/downloadFiles/presention/views/widgets/fileItem.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewOfFiles extends StatelessWidget {
  const ListViewOfFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.only(bottom: 1.5.h),
          child: const FileItem(),
        );
      },
    ));
  }
}
