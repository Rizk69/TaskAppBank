import 'package:flutter/material.dart';

class CardSelect extends StatelessWidget {
  String imagePath;
  String title;
  bool isSelected;
   CardSelect({super.key, required this.imagePath, required this.title,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(color:isSelected? Color(0xFFEEBB49):Colors.transparent,width: 1 )
            ),
            child: Image.asset(imagePath,fit: BoxFit.fitHeight,height: 120,)),
        SizedBox(height: 13,),
        Text(title,style: TextStyle(fontSize: 16,color: Colors.white,fontStyle: FontStyle.normal),)
      ],
    );
  }
}
