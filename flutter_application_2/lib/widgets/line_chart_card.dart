import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/constant.dart';
import 'package:flutter_application_2/const/data/line_chart_data.dart';
import 'package:flutter_application_2/widgets/custom_card_widget.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data  = LineData();

    return  CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
          ),
           SizedBox(height: 20),

           AspectRatio(
            aspectRatio: 16/4, 
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData( handleBuiltInTouches: true),
                gridData: FlGridData(show: true),
                titlesData: FlTitlesData(

                  // rightTitles: AxisTitles(
                  //   sideTitles: SideTitles(showTitles: false),
                  // ),

                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),

                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      getTitlesWidget: (double value, TitleMeta meta){
                        return data.bottomTitle[value.toInt()] != null 
                               ? SideTitleWidget( 
                                axisSide: meta.axisSide, 
                                child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[400]
                                    ),
                                )): SizedBox();
                      },
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                  
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      getTitlesWidget: (double value, TitleMeta meta){
                        return data.leftTitle[value.toInt()] != null 
                               ? SideTitleWidget( 
                                axisSide: meta.axisSide, 
                                child: Text(
                                    data.leftTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[400]
                                    ),
                                )): SizedBox();
                      },
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                    ),
                  )

                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData( 
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent 
                        ],
                      ),
                      show: true
                    ), 
                    dotData: FlDotData(show: false),
                    spots: data.spots,
                  )
                ], 
                 minX: 0,
                maxX: 110,
                maxY: 100,
                minY: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}