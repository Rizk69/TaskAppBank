import 'package:flutter/material.dart';

import '../helper/constens.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              textAlign: TextAlign.center,
              'Ahmed mohamed',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 2, // equivalent to line height of 24px
                letterSpacing: -0.006,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19.0),
          child: Text(
            textAlign: TextAlign.left,
            '123-***-***778',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 2, // equivalent to line height of 24px
              letterSpacing: -0.006,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: 9.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: LinearGradient(
              colors: [
                Color(0xFFEEBB49),
                Color(0xFFFCF6BA),
                Color(0xFFFFFFFF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text(
              textAlign: TextAlign.start,
              'Available limit',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                height: 2, // equivalent to line height of 24px
                letterSpacing: -0.006,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              textAlign: TextAlign.left,
              '${44556} TL',
              style: TextStyle(
                color: Constance.primaryColor,
                fontFamily:
                'Inter', // replace with your desired font
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.5, // equivalent to line height of 24px
                letterSpacing: -0.006,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              textAlign: TextAlign.start,
              'Total expenses',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                height: 2, // equivalent to line height of 24px
                letterSpacing: -0.006,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              textAlign: TextAlign.left,
              '${44556} TL',
              style: TextStyle(
                color: Colors.red,
                fontFamily:
                'Inter', // replace with your desired font
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.5, // equivalent to line height of 24px
                letterSpacing: -0.006,
              ),
            )
          ],
        ),
        SizedBox(height: 50,),
        Align(
          alignment: Alignment.centerRight,
          child: Column(

            children: [
              Icon(

                Icons.disabled_by_default,
                color: Constance.primaryColor,
                size: 35,
              ),
              Text(
                textAlign: TextAlign.left,
                'Deactivate',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily:
                  'Inter', // replace with your desired font
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 2, // equivalent to line height of 24px
                  letterSpacing: -0.006,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
