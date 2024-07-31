import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../custom_widgets/appbar_custom.dart';
import '../custom_widgets/icon_custom.dart';
import '../custom_widgets/row_custom.dart';
class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: AppbarCustom(
          tittle: "Additional Information",
        ),
      ),
      backgroundColor: white,
      body:Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          RowCustom(midText: "Share Dukaan App", iconleading:IconCustom(size: 30, color: greyIcon, icon: Icons.share_outlined), iconTrailing: null,
          ),


        ],),
      )  ,
    );
  }
}





