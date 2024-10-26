import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < 850; // device is mobile

  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width > 50 && MediaQuery.of(context).size.width < 1100; // device is tablet

  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1100; // device is mobile
}