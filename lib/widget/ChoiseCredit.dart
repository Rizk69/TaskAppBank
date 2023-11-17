import 'package:flutter/material.dart';

class ChoiseCredit extends StatelessWidget {
  String text;
  IconData icon;
  IconData icon2;
   ChoiseCredit({required this.text,required this.icon,required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration:BoxDecoration(
              color:Color(0xFFEEBB49),
              borderRadius: BorderRadius.circular(5)
          ),

          child: Icon(icon,size: 25,),
        ),
        SizedBox(width: 20,),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            height: 1.2, // This corresponds to line-height in CSS
            letterSpacing: -0.006,
          ),
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(icon2,size: 35,color: Colors.white,))
      ],
    );
  }
}
