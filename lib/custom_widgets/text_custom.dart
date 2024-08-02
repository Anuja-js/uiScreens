import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  Color color;
  String text;
  double? size;
   TextCustom({
     required this.color,
    required this.text,this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color:color,fontSize: size),

    );
  }
}
