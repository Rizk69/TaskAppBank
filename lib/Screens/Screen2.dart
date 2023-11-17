import 'package:flutter/material.dart';
import 'package:untitled/widget/ChoiseCredit.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Image.asset(
            'assets/Rectangle 77.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications_sharp,
                          size: 35,
                          color: Colors.black,
                        ),
                        Positioned(
                          top: 13,
                          right: 18,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/Title.png',
                  height: 60,
                ),
                SizedBox(
                  height: 40,
                ),
                ChoiseCredit(text: 'Bank Card', icon: Icons.credit_card),
                SizedBox(
                  height: 20,
                ),
                ChoiseCredit(
                    text: 'credit card', icon: Icons.monetization_on_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
