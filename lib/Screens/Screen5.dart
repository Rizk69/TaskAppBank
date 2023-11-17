import 'package:flutter/material.dart';
import 'package:untitled/helper/constens.dart';
import 'package:untitled/widget/CardDetails.dart';

import '../widget/AddCards.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
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
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/Title.png',
                      height: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AddCards(
                      text: 'My cards ',
                      icon: Icons.credit_card,
                      icon2: Icons.add,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    const CardDetails(),
                    Container(
                      height: 1,
                      margin: const EdgeInsets.symmetric(vertical: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Constance.primaryColor,
                      )),
                    ),
                    const CardDetails(),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
