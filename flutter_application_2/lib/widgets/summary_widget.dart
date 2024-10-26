
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/pie_chart.dart';
import 'package:flutter_application_2/widgets/scheduled_widget.dart';
import 'package:flutter_application_2/widgets/summary_details.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20,),
        Chart(),
        Text('Summary', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
        Padding(
          padding: EdgeInsets.all(24.0),
          child: SummaryDetails(),
        ),
        SizedBox(height: 40,),
        Scheduled(),
      ],
    );
  }
}