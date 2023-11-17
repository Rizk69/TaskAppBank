import 'package:flutter/material.dart';

class TransformImage extends StatelessWidget {
  const TransformImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            Positioned(
              left: 190,
              child: Transform.rotate(
                alignment: Alignment.center,
                angle: 45 * (3.141592653589793 / 180),
                child: Image.asset(
                  'assets/card.png',
                  fit: BoxFit.fitHeight,
                  height: 150,
                ),
              ),
            ),
            Positioned(
              left: 100,
              child: Transform.rotate(
                angle: 45 * (3.141592653589793 / 180),
                child: Image.asset(
                  'assets/card.png',
                  fit: BoxFit.fitHeight,
                  height: 150,
                ),
              ),
            ),

            Positioned(
                right: 5,
                top: 35,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined,size: 50,color: Colors.white,)))


          ],
        ),
      ),
    );
  }
}
