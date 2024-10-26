import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/constant.dart';
import 'package:flutter_application_2/const/data/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}


class _SideMenuWidgetState extends State<SideMenuWidget> {
  final data = SideMenuData();  
  int selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length, // to access the list from the data, and length to access the length of the list
        itemBuilder: (context,index) => buildMenuEntry(data,index)),
    );
  }

  
  Widget buildMenuEntry(SideMenuData data, int index) {

  final isSelected = selectedIndex == index;
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            color: isSelected ? selectionColor: Colors.transparent
          ),
          child: InkWell(
            onTap: () => setState(() {
              selectedIndex = index; 
            }),

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 13),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black: Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.black: Colors.grey,
                fontWeight: isSelected? FontWeight.w600 : FontWeight.normal
              ),
            )
          ],
        ),
      ),
    );
  }
}

