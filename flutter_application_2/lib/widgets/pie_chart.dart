import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/data/pie_chart_data.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData =ChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.pieChartSelectionData

            )
          ),
          const Positioned.fill(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(),
              Text("70%", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, height: 2.5, fontSize: 20),),
              SizedBox(height: 2,),
              Text("of 100%")
            ],
          ))
        ],
      ),
    );
  }
}