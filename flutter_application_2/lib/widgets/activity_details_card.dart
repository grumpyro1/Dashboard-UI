import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/data/health_details.dart';
import 'package:flutter_application_2/widgets/custom_card_widget.dart';
import 'package:flutter_application_2/util/responsive.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({super.key});
  
  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    final isMobile = Responsive.isMobile(context);
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2: 4,
        crossAxisSpacing: isMobile ? 12: 15,
        mainAxisSpacing: 12.0
        ),
        itemBuilder: (context, index) => CustomCard( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(healthDetails.healthData[index].icon, width: 30, height: 30,),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 4),
                child: Text(healthDetails.healthData[index].value,style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),),
              ),
              Text(healthDetails.healthData[index].title)
            ],
          ),
          
        ),
    );
  }
}