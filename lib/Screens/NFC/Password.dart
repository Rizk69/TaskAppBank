import 'package:flutter/material.dart';
import 'package:untitled/helper/constens.dart';
import 'package:untitled/widget/ElivetedButtom.dart';

class Password extends StatelessWidget {
  final TextEditingController _securityPasswordController =
      TextEditingController();

  Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? validateSecurityCode(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a security code';
      }

      return null; // Return null if the input is valid
    }

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
                      height: 90,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Enter password',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        height: 1.5, // equivalent to line height of 23px
                        letterSpacing: 0.9,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextFormField(
                        onSaved: (value) {
                          print(value);
                        },
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        controller: _securityPasswordController,
                        decoration: const InputDecoration(
                          labelText: '',
                          labelStyle:
                              TextStyle(color: Colors.white), // Label color
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Constance
                                    .primaryColor), // Border color when not focused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // Border color when focused
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true, // To hide the security code
                        validator: validateSecurityCode,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Buttoms(
                        text: 'Next',
                        color: Constance.primaryColor,
                        onPressed: () {
                          if (validateSecurityCode(_securityPasswordController
                                  .value
                                  .toString()) !=
                              null) {}
                        })
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
