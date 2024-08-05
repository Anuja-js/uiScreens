import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  Color? color;
  Widget? tittle;
  Widget? subtittle;


   CustomContainer(this.color,this.tittle,this.subtittle, {super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius:
        const BorderRadius.all(Radius.circular(8.0),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    tittle!,
          sh10,
        subtittle!
      ],)
    );
  }
}
