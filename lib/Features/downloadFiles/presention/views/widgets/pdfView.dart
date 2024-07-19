import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:path/path.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sqflite/sqflite.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const PDF().cachedFromUrl(
          'https://fernandamaterial2014.wordpress.com/wp-content/uploads/2014/05/tales-from-the-thousand-and-one-nights.pdf',
          placeholder: (progress) => Center(child:Center(
              child: CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: progress/100,
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
