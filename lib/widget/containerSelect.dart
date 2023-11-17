import 'package:flutter/material.dart';

class ContainerSelect extends StatelessWidget {
  Color color;
   ContainerSelect({Key? key,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
