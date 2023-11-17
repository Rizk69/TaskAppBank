
import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  String text;
  Color color;
  final VoidCallback onPressed;
  Buttoms({required this.text,required this.color,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Color(0xFFC19843)),
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(18),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
