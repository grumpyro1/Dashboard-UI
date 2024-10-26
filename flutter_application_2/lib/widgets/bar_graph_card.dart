import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/data/bar_graph_data.dart';
import 'package:flutter_application_2/const/model/graph_model.dart';
import 'package:flutter_application_2/widgets/custom_card_widget.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    
    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
        childAspectRatio: 3 / 2,
        ),
      itemBuilder: (context, index){
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color: barGraphData.data[index].color,
                    ),

                    borderData: FlBorderData(border: const Border()),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta){
                            return  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                
                                barGraphData.data[index].label,
                                
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            );
                          }
                        )
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    )
                  )
                  ),
              )
            ],
          ),
        );
      },
      );
  }

  List<BarChartGroupData> _chartGroups(
    {required List<GraphModel> points, required Color color}){
      return points
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
          BarChartRodData(
            toY: point.y,
            width: 12,
            color: color.withOpacity(point.y.toInt() > 4 ? 1:0.4),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(3.0),
              topRight: Radius.circular(3.0),
            )
            )
        ]))
      .toList();
    }
}