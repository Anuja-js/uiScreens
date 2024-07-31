import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';

class AppbarCustom extends StatelessWidget {
 bool? center=true;
  Widget? icon;
  String tittle;
  AppbarCustom({
    required this.tittle,this.icon,this.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(elevation: 0,
      backgroundColor: blueApp,
      centerTitle: center=true?true:false,
      title: TextCustom(
        text: tittle,color: white,
      ),
      leading: icon,
    );
  }
}
