import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/presention/manger/viewDownloadFilesCubit.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/listViewOfFiles.dart';
import 'package:ehsan/Features/downloadFiles/presention/views/widgets/shimmerListViewOfFiles.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/AppHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              BlocBuilder<ViewDownlaodFilesCubit, ViewDownlaodFilesState>(
                builder: (context, state) {
                  if (state is ViewDownlaodFilesLoading) {
                    return const ShimmerListViewOfFiles();
                  } else if (state is ViewDownlaodFilesSuccess) {
                    print("xxxxxxxxxxxxxxxxxxxxxxxx${state.entities}");
                    return ListViewOfFiles(data: state.entities);
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
