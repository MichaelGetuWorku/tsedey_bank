import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  late FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }/**/
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, kTertiaryColor, kSecondaryColor],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.white,
                          backgroundImage:
                          AssetImage('assets/tsedey_bank_logo.png'),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'You will need it to sign in to the application',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ), // Change color as needed
                      ),
                      const SizedBox(height: 20.0),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          autofocus: true,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: _focusNode.hasFocus ? kPrimaryColor : Colors.red), // Change border color based on focus state

                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText ? Icons.visibility : Icons.visibility_off,
                              ),
                            ),

                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        "Didn't get the code?",
                        style: TextStyle(
                          color: kSecondaryColor,
                        ), // Change color as needed
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add onPressed function here
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15.0,
                                  ),
                                ),
                              ),
                              backgroundColor: kPrimaryColor,
                              padding: const EdgeInsets.all(20)),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
