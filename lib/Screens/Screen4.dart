import 'package:flutter/material.dart';
import 'package:untitled/helper/constens.dart';
import 'package:untitled/widget/ElivetedButtom.dart';

class Screen4 extends StatefulWidget {
  @override
  State<Screen4> createState() => _Screen3State();
}

class _Screen3State extends State<Screen4> {
  final TextEditingController _securityCodeController = TextEditingController();

  final FocusNode _securityCodeFocus = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validateSecurityCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a security code';
    }

    // Add your security code validation logic here.
    // For simplicity, this example checks if the length is 3.
    if (value.length != 3) {
      return 'Security code must be 3 digits';
    }

    return null; // Return null if the input is valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Stack(children: [
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(19),
                child: Image.asset('assets/Title.png', fit: BoxFit.cover),
              ),
              const Text(
                'Card activation ',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password', // Replace with your actual text
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                            color: Colors
                                .white, // You can change the color accordingly
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Constance.primaryColor, width: 1),
                        ),
                        child: Center(
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            controller: _securityCodeController,
                            decoration: const InputDecoration(
                              labelText: '',
                              labelStyle:
                                  TextStyle(color: Colors.white), // Label color
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .transparent), // Border color when not focused
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .transparent), // Border color when focused
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            obscureText: true, // To hide the security code
                            validator: _validateSecurityCode,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ConfirmPassword', // Replace with your actual text
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                            color: Colors
                                .white, // You can change the color accordingly
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Constance.primaryColor, width: 1),
                        ),
                        child: Center(
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            controller: _securityCodeController,
                            decoration: const InputDecoration(
                              labelText: '',
                              labelStyle:
                                  TextStyle(color: Colors.white), // Label color
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .transparent), // Border color when not focused
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .transparent), // Border color when focused
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            obscureText: true, // To hide the security code
                            validator: _validateSecurityCode,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Buttoms(
                          onPressed: () {},
                          text: 'Activate',
                          color: Constance.primaryColor)
                    ],
                  ),
                ),
              )
            ])
          ]),
        ));
  }
}
