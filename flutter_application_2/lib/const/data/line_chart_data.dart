import 'package:fl_chart/fl_chart.dart';

class LineData {
  final spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(10.00, 75.00),
    FlSpot(20.00, 38.00),
    FlSpot(23.00, 12.00),
    FlSpot(30.00, 98.00),
    FlSpot(40.00, 12.00),
    FlSpot(44.00, 38.00),
    FlSpot(50.00, 54.00),
    FlSpot(55.00, 45.00),
    FlSpot(56.00, 77.00),
    FlSpot(60.00, 38.00),
    FlSpot(66.00, 12.00),
    FlSpot(70.00, 12.00),
    FlSpot(78.00, 66.00),
    FlSpot(80.00, 94.00),
    FlSpot(88.00, 22.00),
    FlSpot(89.00, 56.00),
    FlSpot(90.00, 67.00),
    FlSpot(90.00, 31.00),
    FlSpot(99.00, 12.00)
  ];

  final leftTitle = {
    0: '0',
    20: '2k',
    40: '4k',
    60: '6k',
    80: '8k',
    100: '10k',
  };

  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
