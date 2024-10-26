import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/constant.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCard({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: const  BorderRadius.all(
            Radius.circular(10.0)
          ),
          color: color ?? cardBackgroundColor,
        ), 
        child: Padding(
          padding: padding ?? const EdgeInsets.all(2.0),
          child: child,
        ),
      ),
    );
  }
}