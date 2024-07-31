import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';

class AppbarCustom extends StatelessWidget {
  String tittle;
  AppbarCustom({
    required this.tittle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: blueApp,
      title: TextCustom(
        text: tittle,color: white,
      ),
      leading: IconButton(
          onPressed: () {},
          icon: IconCustom(
            size: 30,
            icon: Icons.arrow_back,
            color: white,
          )),
    );
  }
}
