import 'package:ehsan/Features/downloadFiles/presention/views/widgets/listViewOfFiles.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DownloadFilesBody extends StatelessWidget {
  const DownloadFilesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: "الملفات",
        widget: Padding(
          padding: EdgeInsets.symmetric(horizontal: kAppPadding),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              const ListViewOfFiles(),
            ],
          ),
        ),
      ),
    );
  }
}
