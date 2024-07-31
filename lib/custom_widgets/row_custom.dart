
import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';
import 'icon_custom.dart';
class RowCustom extends StatelessWidget {
  IconData iconleading;
  IconData icon;
 String midText;
   RowCustom({
     required this.icon,
     required this.iconleading,
    required this.midText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconCustom(color: greyIcon, icon: iconleading,size: 30,),
        sw10,
        Expanded(child: TextCustom(text: midText,color: greyIcon,)),
        IconCustom(color: greyIcon, icon: icon,size: 20,)
      ],);
  }
}