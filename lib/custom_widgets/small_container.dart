import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';

import '../constants/colors.dart';
class ContainerSmall extends StatelessWidget {
  Color color;
  Widget? icon;
  ContainerSmall({
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,height: 55,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: color,
        borderRadius:
        const BorderRadius.all(Radius.circular(5.0),),
      ),
      child: Center(child:icon),
    );
  }
}