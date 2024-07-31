import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
class TextCustom extends StatelessWidget {
  Color color;
  String text;
   TextCustom({
     required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color:color),

    );
  }
}
