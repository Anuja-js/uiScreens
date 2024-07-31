import 'package:flutter/material.dart';

import '../constants/colors.dart';
class IconCustom extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
   IconCustom({
     required this.size,
     required this.color,
     required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(icon,color: color,size: size,);
  }
}