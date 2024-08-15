import 'package:ehsan/Features/metrices/data/models/metricesForSubjectModel.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesEntity.dart';
import 'package:ehsan/Features/metrices/domain/entites/metricesForSubjectEntity.dart';
import 'package:ehsan/Features/metrices/presention/views/metrices.dart';
import 'package:ehsan/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LineMetrices extends StatelessWidget {
  const LineMetrices(
      {super.key, this.data, required this.forSubject, this.dataForSubject});
  final MetricesEntity? data;
  final MetricesForSubjectEntity? dataForSubject;
  final bool forSubject;

  List<FlSpot> createSpots(List<Data> data) {
    List<FlSpot> spots = [];
    for (int i = 0; i < data.length; i++) {
      spots.add(FlSpot(i.toDouble(),
          (data[i].mark!.toDouble() / data[i].fullMark!.toDouble()) * 100));
    }
    return spots;
  }

  @override
  Widget build(BuildContext context) {
    print(data);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100.w,
          ),
          SizedBox(
            height: 45.h,
            width: 80.w,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  getDrawingHorizontalLine: (value) {
                    return const FlLine(
                      color: Color(0xff37434d),
                      strokeWidth: 0.4,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return const FlLine(
                      color: Color(0xff37434d),
                      strokeWidth: 0.4,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              color: Color(0xff68737d),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              color: Color(0xff68737d),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d)),
                ),
                minX: 0,
                maxX: forSubject
                    ? (dataForSubject!.data!.length - 1).toDouble()
                    : 2,
                minY: 0,
                maxY: 100,
                lineBarsData: [
                  LineChartBarData(
                    spots: forSubject
                        ? createSpots(dataForSubject!.data!)
                        : [
                            // forSubject
                            //     ? FlSpot(0.0, 0.0)
                            // :
                            FlSpot(0.0, data!.averageExam!.toDouble()),
                            // forSubject
                            //     ?
                            // FlSpot(0.0, 0.0)
                            // :
                            FlSpot(1.0, data!.averageOral!.toDouble()),
                            // forSubject
                            //     ? FlSpot(0.0, 0.0)
                            // :
                            FlSpot(2.0, data!.averageTest!.toDouble()),

                            // FlSpot(3, 200),
                            // FlSpot(4, 500),
                            // FlSpot(5, 250),
                            // FlSpot(6, 400),
                          ],
                    isCurved: true,
                    curveSmoothness:
                        0.5, // Increase smoothness for more curvature
                    gradient: LinearGradient(
                      colors: [
                        kPrimaryColor,
                        kPrimaryColor.withOpacity(0.7),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    barWidth: 3,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, bar, index) =>
                          FlDotCirclePainter(
                        radius: 4,
                        color: Colors.blue,
                        strokeWidth: 2,
                        strokeColor: Colors.white,
                      ),
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.3),
                          Colors.blueAccent.withOpacity(0.1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
