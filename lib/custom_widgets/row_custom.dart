
import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';
import 'icon_custom.dart';
class RowCustom extends StatelessWidget {
  Widget iconleading;
  Widget? iconTrailing;
 String midText;
   RowCustom({
     required this.iconTrailing,
     required this.iconleading,
    required this.midText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       iconleading,
        sw10,
        Expanded(child: TextCustom(text: midText,color: greyIcon,)),
        iconTrailing!
      ],);
  }
}