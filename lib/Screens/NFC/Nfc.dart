import 'package:flutter/material.dart';
import 'package:untitled/helper/constens.dart';
import 'package:untitled/widget/ElivetedButtom.dart';

class Nfc extends StatelessWidget {
  final TextEditingController _securityPasswordController =
      TextEditingController();

  Nfc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: [
                            const Icon(
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
                                child: const Center(
                                    child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/Component 2(1).png',
                      height: 60,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'For trading',
                      style: TextStyle(
                        color: Constance.primaryColor
                            .withOpacity(0.8)
                            .withBlue(30303),
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                        height: 1.9, // equivalent to line height of 24px
                        letterSpacing: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Ahmed mohamed',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        height: 1.5, // equivalent to line height of 23px
                        letterSpacing: 0.9,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Please enter NFC code ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        height: 1.2, // equivalent to line height of 23px
                        letterSpacing: 0.9,
                      ),
                    ),
                    Image.asset(
                      'assets/lucide_smartphone-nfc.png',
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Buttoms(
                        text: 'Next',
                        color: Constance.primaryColor,
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
