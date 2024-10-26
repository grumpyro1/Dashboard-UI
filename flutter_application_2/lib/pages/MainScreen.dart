import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/responsive.dart';
import 'package:flutter_application_2/widgets/dashboard_widget.dart';
import 'package:flutter_application_2/widgets/side_menu_widget.dart';
import 'package:flutter_application_2/widgets/summary_widget.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      drawer: !isDesktop ? SizedBox(width: 250, child: Container( color: Colors.black, child: SideMenuWidget()),) : null, // for Icons.menu
      endDrawer: isMobile? SizedBox(width: 450, child: Container( color: Colors.black, child: SummaryWidget())) : null,
      body: SafeArea(
          child: Row(
            children: [
              if(isDesktop) // if ang screen width is full, makita ni
                const Expanded(
                flex: 2,
                child: SizedBox(child: SideMenuWidget()),
              ),
              const Expanded(
                flex: 7,
                child: DashboardWidget(),
              ),
              if(isDesktop) // if ang screen width is full, makita ni
               const Expanded(
                flex:3,
                child: SummaryWidget(),
              ),
            ],
      )),
    );
  }
}
