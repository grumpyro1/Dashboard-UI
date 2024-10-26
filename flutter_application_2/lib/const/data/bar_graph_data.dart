import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/model/bar_graph_model.dart';
import 'package:flutter_application_2/const/model/graph_model.dart';

class BarGraphData{
  final data = [
    const BarGraphModel(label: "Activity Level", color: Color(0xFF2697FF), graph:[GraphModel(x: 2, y: 7),GraphModel(x: 5, y: 2),GraphModel(x: 9, y: 2),GraphModel(x: 5, y: 2)]),
    const BarGraphModel(label: "Nutrition", color: Color.fromARGB(255, 38, 255, 85), graph:[GraphModel(x: 5, y: 8),GraphModel(x: 6, y: 4),GraphModel(x: 7, y: 4),GraphModel(x: 5, y: 3)]),
    const BarGraphModel(label: "Hydration Level", color: Color.fromARGB(255, 211, 95, 95), graph:[GraphModel(x: 1, y: 7),GraphModel(x: 6, y: 5),GraphModel(x: 1, y: 4),GraphModel(x: 7, y: 6)]),

  ];
}