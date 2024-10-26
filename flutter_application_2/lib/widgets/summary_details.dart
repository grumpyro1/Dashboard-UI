import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_card_widget.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails('Cal', '305'),
          buildDetails('Steps', '10983'),
          buildDetails('Distance', '7km'),
          buildDetails('Sleep', '7hr'),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Text(
            key,
            style: TextStyle(fontSize: 11,color: Colors.grey),
          ),
          SizedBox(height: 2,),
          Text(
            value, style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}