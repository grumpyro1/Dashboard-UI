import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/const/constant.dart';
import 'package:flutter_application_2/util/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isDesktop = Responsive.isDesktop(context);
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(!isDesktop)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ),
          ),


        if(!isMobile)     
          Expanded(
            child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: cardBackgroundColor,
            
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
            
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
            
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  contentPadding:const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 21,
                  )
                ),
              
            ),
          ),
        if (isMobile)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search,
                    color: Colors.grey,
                    size: 25,
                    ),
                  ),
                  InkWell(
                    onTap: () => Scaffold.of(context).openEndDrawer(),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child:ClipOval(child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', height:25, width: 25,)),
                    ),
                  )
              ],
            ),
            
          ),

      ],
    );
  }
}