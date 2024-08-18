import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/classes/appButton.dart';
import 'package:ehsan/core/utils/functions/formateDate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FileItem extends StatelessWidget {
  const FileItem({super.key, required this.data});
  final DownloadFilesEntity data;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5.w),
      decoration: BoxDecoration(
          border: Border.all(width: 0.05.h, color: Colors.grey),
          borderRadius: BorderRadius.circular(10.sp)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _nameOfSubject(),
          SizedBox(
            height: 1.h,
          ),
          _nameOfFile(),
          SizedBox(
            height: 1.h,
          ),
          _dateOfUpload(),
          SizedBox(
            height: 2.h,
          ),
          AppButton(
              text: "تنزيل الملف",
              isGradient: false,
              paddingVertical: 1.h,
              onTap: () {
                print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww${data.file}");
                AppRouter.router
                    .push("${AppRouter.kPdfViewRoute}?file=${data.file}");
              }),
          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }

  Widget _nameOfSubject() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: kPrimaryColor.withOpacity(0.3)),
      child: Text(
        data.subject??"",
        style: TextStyle(
            fontSize: 11.sp, fontWeight: FontWeight.bold, color: kPrimaryColor),
      ),
    );
  }

  Widget _nameOfFile() {
    return Text(
      data.name??"",
      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
    );
  }

  Widget _dateOfUpload() {
    return Row(
      children: [
        Text(
          formateDate(data.date??""),
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          "تاريخ الرفع",
          style: TextStyle(
              fontSize: 12.sp, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
