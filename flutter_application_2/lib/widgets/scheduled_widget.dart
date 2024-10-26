import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/data/schedule_task_data.dart';
import 'package:flutter_application_2/widgets/custom_card_widget.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});
  @override
  Widget build(BuildContext context) {
    final data = ScheduleTaskData();
    return Column(
      children: [
        const Text(
          "Schedule",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        for (var i = 0; i < data.schedule.length; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCard(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data.schedule[i].title,style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                              const SizedBox( height: 4),
                              Text(data.schedule[i].date)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Icon(Icons.more),
                        )
                      ],
                    ),
                  ],
                )),
          )
      ],
    );
  }
}
