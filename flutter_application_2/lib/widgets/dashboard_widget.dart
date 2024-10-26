import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/responsive.dart';
import 'package:flutter_application_2/widgets/activity_details_card.dart';
import 'package:flutter_application_2/widgets/bar_graph_card.dart';
import 'package:flutter_application_2/widgets/header_widget.dart';
import 'package:flutter_application_2/widgets/line_chart_card.dart';
import 'package:flutter_application_2/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 18),
          const HeaderWidget(),
          const SizedBox(height: 18),
          const ActivityDetails(),
          const SizedBox(height: 15),
          const LineChartCard(),
          const SizedBox(height: 10),
          const BarGraphCard(),
          const SizedBox(height: 18,),
            if(isTablet) const SummaryWidget()
        ],
      ),
    );
  }
}