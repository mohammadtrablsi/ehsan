import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:path/path.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sqflite/sqflite.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key, required this.file});
  final String file;

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    print("urlurlurl${widget.file}");
    return Scaffold(
      body: Container(
        child: const PDF().cachedFromUrl(
          widget.file,
          placeholder: (progress) => Center(
              child: Center(
            child: CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: progress / 100,
              center: Text('${progress.toStringAsFixed(1)}%'),
              progressColor: kPrimaryColor,
            ),
          )),
          errorWidget: (error) => Center(child: Text(error.toString())),
        ),
      ),
    );
  }
}
