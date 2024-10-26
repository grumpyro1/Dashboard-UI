import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  final pieChartSelectionData = [
    PieChartSectionData(  
      color: Color.fromARGB(255, 66, 166, 248),
      value: 20,
      showTitle: false,
      radius: 22,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 24, 143, 240),
      value: 18,
      showTitle: false,
      radius: 20,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 236, 213, 6),
      value: 13,
      showTitle: false,
      radius: 18,
    ),PieChartSectionData(
      color: const Color.fromARGB(255, 233, 25, 10),
      value: 8,
      showTitle: false,
      radius: 18,
    ),
    PieChartSectionData(
      color: Color.fromARGB(244, 51, 49, 49),
      value: 8,
      showTitle: false,
      radius: 16,
    ),
  ];
}