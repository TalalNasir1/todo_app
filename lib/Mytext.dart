import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
 Mytext({super.key,required this.title,
 this.size=20,this.color=Colors.black,required this.Checked});

final String title;
final double? size;
final Color? color;
final bool Checked;


  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize: size,color: color,fontWeight: FontWeight.bold, decoration: Checked ?TextDecoration.lineThrough : TextDecoration.none), );
  }
}