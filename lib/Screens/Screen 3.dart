import 'package:flutter/material.dart';
import 'package:untitled/widget/ElivetedButtom.dart';

class Screen3 extends StatefulWidget {
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expirationDateController =
      TextEditingController();
  final TextEditingController _securityCodeController = TextEditingController();

  final FocusNode _expirationDateFocus = FocusNode();
  final FocusNode _securityCodeFocus = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a card number';
    }

    // Add your card number validation logic here.
    // For simplicity, this example checks if the length is 16.
    if (value.length != 16) {
      return 'Card number must be 16 digits';
    }

    return null; // Return null if the input is valid
  }

  String? _validateExpirationDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an expiration date';
    }

    // Add your expiration date validation logic here.
    // For simplicity, this example checks if the length is 5.
    if (value.length != 5) {
      return 'Invalid expiration date';
    }

    return null; // Return null if the input is valid
  }

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
        body: Stack(children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(19),
              child: Image.asset('assets/Title.png', fit: BoxFit.cover),
            ),
            Text(
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Card Number', // Replace with your actual text
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFEEBB49), width: 1),
                      ),
                      child: Center(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          controller: _cardNumberController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xFFEEBB49),
                            ),
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
                          validator: _validateCardNumber,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Expiration date', // Replace with your actual text
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFEEBB49), width: 1),
                      ),
                      child: Center(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          controller: _expirationDateController,
                          decoration: InputDecoration(
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
                          validator: _validateExpirationDate,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Security code', // Replace with your actual text
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFEEBB49), width: 1),
                      ),
                      child: Center(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          controller: _securityCodeController,
                          decoration: InputDecoration(
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
                    SizedBox(height: 50),
                    Buttoms(onPressed: (){},text: 'Activate', color: Color(0xFFEEBB49))
                  ],
                ),
              ),
            )
          ])
        ]));
  }
}
