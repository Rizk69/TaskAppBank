import 'package:flutter/material.dart';
import 'package:untitled/helper/constens.dart';

class AddCards extends StatelessWidget {
  String text;
  IconData icon;
  IconData icon2;
  final VoidCallback onPressed;

  AddCards(
      {required this.text,
      required this.icon,
      required this.icon2,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Color(0xFFEEBB49), borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            size: 25,
          ),
        ),
        SizedBox(
          width: 20,
        ),
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
        InkWell(
          onTap: onPressed,
          child: Column(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constance.primaryColor),
                  child: Icon(
                    icon2,
                    size: 25,
                    color: Colors.black,
                  )),
              Text(
                'New card',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  height: 2.0, // equivalent to line height of 20px
                  letterSpacing: 0.01,
                ),
              ),


            ],
          ),
        )
      ],
    );
  }
}
