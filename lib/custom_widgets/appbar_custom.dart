import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';

class AppbarCustom extends StatelessWidget {
 bool? center=true;
  Widget? icon;
  IconData? trailing;

  String tittle;
  AppbarCustom({
    required this.tittle,this.icon,this.center,this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(elevation: 0,
      backgroundColor: blueApp,
      centerTitle: center==true?true:false,
      title: Text(
        tittle,style: TextStyle(color: white,fontSize: 18),
      ),
      leading: icon,
      actions: [
       Icon(trailing),
        sw10
      ],
    );
  }
}
