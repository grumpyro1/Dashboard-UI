import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/model/health_model.dart';


class HealthDetails{
  final healthData = [
    HealthModel(icon: 'assets/icons/burning.png', value: "305", title: "Calories Burned"),
    HealthModel(icon: 'assets/icons/steps-icon.png', value: "10,983", title: "Steps"),
    HealthModel(icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: "7h48m", title: "Sleepd"),
  ];
}