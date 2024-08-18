import 'package:ehsan/Features/downloadFiles/domain/entites/downloadFilesEntity.dart';
import 'package:ehsan/Features/downloadFiles/presention/manger/viewDownloadFilesCubit.dart';
import 'package:ehsan/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:sqflite/sqflite.dart';

class PdfView extends StatefulWidget {
  PdfView({super.key, required this.file});
  final String file;
  bool INeedGoOut = false;

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    print("urlurlurl${widget.file}");
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: InteractiveViewer(
              panEnabled: true, // Enables panning (scrolling)
              minScale: 0.5, // Minimum zoom out level
              maxScale: 4.0, // Maximum zoom in level
              child: const PDF().cachedFromUrl(
                widget.file,
                placeholder: (progress) => Center(
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 5.0,
                    percent: progress / 100,
                    center: Text('${progress.toStringAsFixed(1)}%'),
                    progressColor: kPrimaryColor,
                  ),
                ),
                errorWidget: (error) => Center(child: Text(error.toString())),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setINeedGoOut(widget.INeedGoOut);
              print(widget.INeedGoOut);
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 100.h,
                  color: Colors.transparent,
                ),
                Positioned(
                  right: 5.w,
                  height: 20.h,
                  child: InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      child: widget.INeedGoOut
                          ? CircleAvatar(
                              radius: 16.sp,
                              backgroundColor: kPrimaryColor,
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: kContentColor1,
                                ),
                              ),
                            )
                          : Container(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void setINeedGoOut(bool value) {
    setState(() {
      widget.INeedGoOut = !value;
    });
  }
}
