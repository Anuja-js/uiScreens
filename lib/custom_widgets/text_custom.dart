import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  Color color;
  String text;
  double? size;
  bool?center;
   TextCustom({
     required this.color,
    required this.text,this.size,this.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color:color,fontSize: size),textAlign:center==true? TextAlign.center:TextAlign.start,

    );
  }
}
